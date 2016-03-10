module Softlayer
  module Configuration
    module Storage
      module Group
        module Array
          class Type < Softlayer::Model
            SERVICE = 'SoftLayer_Configuration_Storage_Group_Array_Type'
            attr_accessor :description
            attr_accessor :drive_multiplier
            attr_accessor :hotspare_allow
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :maximum_drives
            attr_accessor :minimum_drives
            attr_accessor :name
            attr_accessor :hardware_component_model_count
            attr_accessor :hardware_component_models

            def self.get_all_objects
              request(:get_all_objects, Array[Softlayer::Configuration::Storage::Group::Array::Type])
            end

            def get_hardware_component_models
              request(:get_hardware_component_models, Array[Softlayer::Hardware::Component::Model])
            end

            def get_object
              request(:get_object, Softlayer::Configuration::Storage::Group::Array::Type)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :drive_multiplier, type: Integer
              property :hotspare_allow, type: Boolean
              property :id, type: Integer
              property :key_name, type: String
              property :maximum_drives, type: Integer
              property :minimum_drives, type: Integer
              property :name, type: String
              property :hardware_component_model_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
