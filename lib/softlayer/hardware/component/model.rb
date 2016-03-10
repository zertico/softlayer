module Softlayer
  class Hardware
    class Component
      class Model < Softlayer::Model
        SERVICE = 'SoftLayer_Hardware_Component_Model'
        autoload :Attribute, 'softlayer/hardware/component/model/attribute'
        autoload :Generic, 'softlayer/hardware/component/model/generic'
        autoload :Architecture, 'softlayer/hardware/component/model/architecture'
        attr_accessor :architecture_type_id
        attr_accessor :capacity
        attr_accessor :description
        attr_accessor :hardware_generic_component_model_id
        attr_accessor :id
        attr_accessor :long_description
        attr_accessor :manufacturer
        attr_accessor :name
        attr_accessor :version
        attr_accessor :attribute_count
        attr_accessor :compatible_array_type_count
        attr_accessor :compatible_child_component_model_count
        attr_accessor :compatible_parent_component_model_count
        attr_accessor :valid_attribute_type_count
        attr_accessor :architecture_type
        attr_accessor :attributes
        attr_accessor :compatible_array_types
        attr_accessor :compatible_child_component_models
        attr_accessor :compatible_parent_component_models
        attr_accessor :hardware_components
        attr_accessor :hardware_generic_component_model
        attr_accessor :infiniband_compatible_attribute
        attr_accessor :is_infiniband_compatible
        attr_accessor :reboot_time
        attr_accessor :type
        attr_accessor :valid_attribute_types

        def get_architecture_type
          request(:get_architecture_type, Softlayer::Hardware::Component::Model::Architecture::Type)
        end

        def get_attributes
          request(:get_attributes, Array[Softlayer::Hardware::Component::Model::Attribute])
        end

        def get_compatible_array_types
          request(:get_compatible_array_types, Array[Softlayer::Configuration::Storage::Group::Array::Type])
        end

        def get_compatible_child_component_models
          request(:get_compatible_child_component_models, Array[Softlayer::Hardware::Component::Model])
        end

        def get_compatible_parent_component_models
          request(:get_compatible_parent_component_models, Array[Softlayer::Hardware::Component::Model])
        end

        def get_hardware_components
          request(:get_hardware_components, Array[Softlayer::Hardware::Component])
        end

        def get_hardware_generic_component_model
          request(:get_hardware_generic_component_model, Softlayer::Hardware::Component::Model::Generic)
        end

        def get_infiniband_compatible_attribute
          request(:get_infiniband_compatible_attribute, Softlayer::Hardware::Component::Model::Attribute)
        end

        def get_is_infiniband_compatible
          request(:get_is_infiniband_compatible, Boolean)
        end

        def get_object
          request(:get_object, Softlayer::Hardware::Component::Model)
        end

        def get_reboot_time
          request(:get_reboot_time, Softlayer::Hardware::Component::Motherboard::Reboot::Time)
        end

        def get_type
          request(:get_type, String)
        end

        def get_valid_attribute_types
          request(:get_valid_attribute_types, Array[Softlayer::Hardware::Component::Model::Attribute::Type])
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :architecture_type_id, type: String
          property :capacity, type: Float
          property :description, type: String
          property :hardware_generic_component_model_id, type: Integer
          property :id, type: Integer
          property :long_description, type: String
          property :manufacturer, type: String
          property :name, type: String
          property :version, type: String
          property :attribute_count, type: BigDecimal
          property :compatible_array_type_count, type: BigDecimal
          property :compatible_child_component_model_count, type: BigDecimal
          property :compatible_parent_component_model_count, type: BigDecimal
          property :valid_attribute_type_count, type: BigDecimal
          property :is_infiniband_compatible, type: Boolean
          property :type, type: String
        end
      end
    end
  end
end
