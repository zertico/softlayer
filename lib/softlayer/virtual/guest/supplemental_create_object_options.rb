module Softlayer
  module Virtual
    class Guest
      class SupplementalCreateObjectOptions < Softlayer::Entity
        attr_accessor :immediate_approval_only_flag
        attr_accessor :post_install_script_uri

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :immediate_approval_only_flag, type: Boolean
          property :post_install_script_uri, type: String
        end
      end
    end
  end
end
