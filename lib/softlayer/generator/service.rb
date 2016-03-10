module Softlayer
  class Generator
    class Service
      attr_reader :name

      def initialize(name)
        @name = name
        load_data_file
      end
      
      def document_methods
        return nil if @document.nil?
        @document.soap_actions
      end
      
      def document_method_params(name)
        return nil if @document.nil?
        methods = []
        messages = @document.parser.sections["message"].select do |x|
          x.attributes["name"].value == Converter.message_name(name)
        end

        # raise UnknownMessage.new("#{name} has no message") if messages.empty?
        return [] if messages.nil? or messages.empty?

        # get parameters for message
        messages.first.css("part").each do |param|
          method_type = param["type"]
          method_type = process_method_type(method_type) if method_type.match(/\Atns:/)
          methods << {name: param["name"].underscore, type: Converter.type(method_type)}
        end
        methods
      end

      def process_method_type(type)
        return nil if @document.nil?
        type.sub!('tns:', '')
        object = @document.parser.sections["types"].first.css("[name='#{type}']").first
        return type if object.nil?
        object_type = object.children[1].attributes["base"].value
        object_type if object_type
        # type
      end

      def document_method_response(name)
        return nil if @document.nil?
        response_message = Converter.message_name(name)+"Response"
        messages = @document.parser.sections["message"].select do |x|
          x.attributes["name"].value == response_message
        end

        return nil if messages.empty?

        return_type = messages.first.css("part")[0]["type"]
        Converter.type(return_type)
      end

      def message_needs_id?(message)
        return nil if @document.nil?
        section = @document.parser.sections["binding"].first
        needs_id = false
        section.css("operation[name=#{Converter.message_name(message)}] input").children.each do |header|
          needs_id = true if header["message"] == "tns:#{@name}InitParametersHeader"
        end
        needs_id
      end

      def representation_hash
        return nil if @document.nil?
        rep = {}
        document_methods.each do |method|
          method_scope = :class
          method_scope = :instance if message_needs_id?(method)
          rep[method] = {
            input: document_method_params(method),
            return: document_method_response(method),
            method_scope: method_scope
          }
        end
        rep
      end

      private
        def load_data_file
          @document = Wasabi.document File.read("data/#{@name.sub(/\ASoftLayer_/, '')}.wsdl")
        rescue Errno::ENOENT => e
          @document = nil
        end
    
      class UnknownMessage < Exception; end
    end
  end
end
