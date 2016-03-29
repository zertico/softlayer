module Softlayer
  module Virtual
    class Guest
      module Boot
        class Parameter
          class Type < Softlayer::Entity
            SERVICE = 'SoftLayer_Virtual_Guest_Boot_Parameter_Type'
            attr_accessor :boot_option
            attr_accessor :create_date
            attr_accessor :description
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :modify_date
            attr_accessor :name
            attr_accessor :value

            def self.get_all_objects
              request(:get_all_objects, Array[Softlayer::Virtual::Guest::Boot::Parameter::Type])
            end

            def get_object
              request(:get_object, Softlayer::Virtual::Guest::Boot::Parameter::Type)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :boot_option, type: String
              property :create_date, type: DateTime
              property :description, type: String
              property :id, type: Integer
              property :key_name, type: String
              property :modify_date, type: DateTime
              property :name, type: String
              property :value, type: String
            end
          end
        end
      end
    end
  end
end
