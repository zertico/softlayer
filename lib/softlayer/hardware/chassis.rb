module Softlayer
  class Hardware
    class Chassis < Softlayer::Entity
      attr_accessor :form_factor_id
      attr_accessor :id
      attr_accessor :manufacturer
      attr_accessor :name
      attr_accessor :unit_size
      attr_accessor :version
      attr_accessor :backplane_capacity
      attr_accessor :bay_capacity
      attr_accessor :drive_capacity
      attr_accessor :drive_controller_capacity
      attr_accessor :gpu_capacity
      attr_accessor :hardware_function
      attr_accessor :power_capacity

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :form_factor_id, type: Integer
        property :id, type: Integer
        property :manufacturer, type: String
        property :name, type: String
        property :unit_size, type: Integer
        property :version, type: String
        property :backplane_capacity, type: String
        property :bay_capacity, type: String
        property :drive_capacity, type: String
        property :drive_controller_capacity, type: String
        property :gpu_capacity, type: String
        property :power_capacity, type: String
      end
    end
  end
end
