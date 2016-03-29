module Softlayer
  module Container
    module Bandwidth
      class GraphInputs < Softlayer::Entity
        attr_accessor :end_date
        attr_accessor :network_interface_id
        attr_accessor :pod
        attr_accessor :server_name
        attr_accessor :start_date

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :end_date, type: DateTime
          property :network_interface_id, type: Integer
          property :pod, type: Integer
          property :server_name, type: String
          property :start_date, type: DateTime
        end
      end
    end
  end
end
