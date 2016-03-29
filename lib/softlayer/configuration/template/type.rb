module Softlayer
  module Configuration
    class Template
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Configuration_Template_Type'
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :name

        def get_object
          request(:get_object, Softlayer::Configuration::Template::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :name, type: String
        end
      end
    end
  end
end
