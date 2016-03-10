module Softlayer
  module Auxiliary
    module Press
      class Release
        class Content < Softlayer::Model
          SERVICE = 'SoftLayer_Auxiliary_Press_Release_Content'
          attr_accessor :id
          attr_accessor :press_release_id
          attr_accessor :text

          def get_object
            request(:get_object, Softlayer::Auxiliary::Press::Release::Content)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :press_release_id, type: Integer
            property :text, type: String
          end
        end
      end
    end
  end
end
