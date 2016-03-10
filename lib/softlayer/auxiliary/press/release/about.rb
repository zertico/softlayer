module Softlayer
  module Auxiliary
    module Press
      class Release
        class About < Softlayer::Model
          SERVICE = 'SoftLayer_Auxiliary_Press_Release_About'
          autoload :Press, 'softlayer/auxiliary/press/release/about/press'
          attr_accessor :content
          attr_accessor :id
          attr_accessor :title

          def get_object
            request(:get_object, Softlayer::Auxiliary::Press::Release::About)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :content, type: String
            property :id, type: Integer
            property :title, type: String
          end
        end
      end
    end
  end
end
