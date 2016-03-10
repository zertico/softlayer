require 'softlayer/mock/account'
require 'softlayer/mock/brand'
require 'softlayer/mock/dns/domain'
require 'softlayer/mock/dns/domain/resource_record/soa_type'
require 'softlayer/mock/ticket'
require 'softlayer/mock/virtual/guest'

module Softlayer
  class Mock
    attr_accessor :id

    def self.add_attributes(attrs)
      class_name = get_class_from_return_object
      obj = class_name.constantize.new
      attrs.each do |attr,value|
        obj.send("#{attr}=", value) if obj.respond_to?("#{attr}=")
      end
      obj
    end

    def self.all
      collection = []
      results = $database[get_class_from_return_object]

      return collection if results.nil?
      results.each do |key,result|
        collection.push(result)
      end
      collection
    end

    def self.create_object(attrs)
      obj = add_attributes(attrs)
      id = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
      save_on_database(id, obj)
    end

    def self.find(id)
      $database[get_class_from_return_object].each do |key,obj|
        return obj if obj.id == id
      end
      nil
    end

    def self.find_by_key(key)
      $database[get_class_from_return_object][key]
    end

    def self.get_class_from_return_object
      if !@return_object.nil?
        @return_object.first.name if @return_object.name == Array
        @return_object.name
      else
        self.name.gsub("::Mock","")
      end
    end

    def self.message_to_params(message)
      parameters = []
      if !message.nil?
        message.each do |attr,value|
          parameters.push(value)
        end
      end
      parameters
    end

    def self.request(service_name, method, return_object, message, init_headers = {})
      klass_name = service_name.gsub("SoftLayer","Softlayer")
      klass_name = klass_name.gsub("Softlayer_", "Softlayer_Mock_").gsub("_","::")
      klass_name = klass_name.constantize

      if init_headers.keys.map { |x| x.match /#{service_name}InitParameters/ }.empty?
        @service = klass_name
      else
        @service = klass_name.new
        key_name = init_headers.keys.find { |x| x.match /#{service_name}InitParameters/ }
        @service.id = init_headers[key_name]["id"]
      end
      @return_object = return_object
      @message = message

      raise NotImplemented, "Error: Method #{method} not implemented" unless @service.methods.include?(method)
      parameters = message_to_params(message)
      return @service.send(method, *parameters) if parameters.length > 0
      @service.send(method)
    end

    def self.save_on_database(key, obj)
      if $database[obj.class.name].nil?
        $database[obj.class.name] = {}
        $database[obj.class.name][key] = obj
      else
        $database[obj.class.name][key] = obj
      end
    end

    class NotImplemented < StandardError
    end

  end
end
