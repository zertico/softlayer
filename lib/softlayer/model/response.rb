module Softlayer
  class Model
    class Response
      HASH_TYPES = [ :'@soap_enc:array_type', :'@xsi:type', :@href ]
      RUBY_TYPES = [ String, TrueClass, FalseClass, Nori::StringWithAttributes ]
      def initialize(response)
        map_item_to_ruby_type(response)
        return if @return_item

        @xsi_type = response[:'@xsi:type']

        if @xsi_type.match(/Array\z/)
          initialize_hash(response)
        else
          @item = response
        end
        @item.extend(Hashie::Extensions::DeepFind)
        @item.extend(Hashie::Extensions::DeepLocate)
        map_references
        build_references
      end

      def map_item_to_ruby_type(response)
        if RUBY_TYPES.include?(response.class) || response.nil?
          @return_item = true
          @item = response
        end
      end

      def initialize_hash(hash)
        @item = hash[:item] if hash.has_key?(:item)
        @array_type = hash[:'@soap_enc:array_type'] if hash.has_key?(:'@soap_enc:array_type')
      end

      def process(return_object)
        return @item if @return_item
        # check if array is empty or not
        if (!@item.is_a?(Array) && @xsi_type.match(/Array\z/))
          processed_object = process_object
          return [] if processed_object.nil?
          return [process_object] 
        end
        return process_array if (@item.is_a?(Array) && @xsi_type.match(/Array\z/))
        process_object
      end

      def process_array
        items = []
        @item.each do |item|
          model = build_model(item)
          items << model unless model.nil?
        end
        items
      end

      def process_object
        build_model(@item)
      end

      def convert_item_type(type)
        name = Softlayer::Generator::Converter.type(type)
        name.sub(/Array\[/, '').sub(/\]/, '').constantize
      end

      def map_references
        @references = @item.deep_find_all(:@href)
        if @references
          @references = @references.sort.uniq.reverse
        else
          @references = []
        end
        @references.map! { |x| x.tr('#', '') }
      end

      def build_references
        @references_map = {}
        @references.each do |ref|
          element = @item.deep_locate -> (key, value, object) { key == :@id && value == ref }
          element = element.first
          @references_map[ref] = build_reference(element)
        end
      end

      def build_reference(element)
        build_model_object(element)
      end

      def build_collection(element)
        elements = []
        element.each do |item|
          model = build_model(item)
          elements << model unless model.nil?
        end
        elements
      end

      def build_collection_single(element)
        return [] if element.nil?
        [build_model(element)]
      end

      def build_model(element)
        return nil if element.nil?
        return @references_map[element[:@href].tr('#', '')] if element.keys == [:@href]
        if element.keys.include?(:@id)
          binding.pry if @references_map.nil?
          binding.pry if element.nil?
          model = @references_map[element[:@id]]
        else
          model = build_model_object(element)
        end

        model_build_relationships(model, element)
        model
      end

      def build_model_object(element)
        element = element.dup
        id = element.delete(:@id)
        item_type = element.delete(:'@xsi:type')
        item_type = convert_item_type(item_type)
        attributes = element.select { |k, v| !v.is_a?(Hash) }
        attributes.deep_stringify_keys!
        return element if item_type == String
        model = (item_type.to_s+"::Representer").constantize.new(item_type.new).from_hash(attributes)
      end

      def model_build_relationships(model, element)
        relations = element.select { |k, v| v.is_a?(Hash) }
        relations.each_pair do |k, v|
          if v.is_a?(Hash) and v.has_key?(:item) and v[:item].is_a?(Array)
            model.send("#{k}=", build_collection(v[:item]))
          elsif is_collection_single_element?(v)
            model.send("#{k}=", build_collection_single(v[:item]))
          else
            model.send("#{k}=", build_model(v))
          end
        end
      end

      def is_collection_single_element?(v)
        v.is_a?(Hash) and v.has_key?(:item) and v[:item].is_a?(Hash) and (v.keys - [:item, :"@xsi:type", :"@soap_enc:array_type"]).empty?
      end
    end
  end
end
