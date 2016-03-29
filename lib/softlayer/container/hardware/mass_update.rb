module Softlayer
  module Container
    module Hardware
      class MassUpdate < Softlayer::Entity
        attr_accessor :hardware_id
        attr_accessor :message
        attr_accessor :success_flag

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :hardware_id, type: Integer
          property :message, type: String
          property :success_flag, type: String
        end
      end
    end
  end
end
