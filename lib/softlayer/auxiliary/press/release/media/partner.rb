module Softlayer
  module Auxiliary
    module Press
      class Release
        module Media
          class Partner < Softlayer::Model
            SERVICE = 'SoftLayer_Auxiliary_Press_Release_Media_Partner'
            autoload :Press, 'softlayer/auxiliary/press/release/media/partner/press'
            attr_accessor :id
            attr_accessor :name

            def get_object
              request(:get_object, Softlayer::Auxiliary::Press::Release::Media::Partner)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
