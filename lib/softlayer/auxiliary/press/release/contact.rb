module Softlayer
  module Auxiliary
    module Press
      class Release
        class Contact < Softlayer::Entity
          SERVICE = 'SoftLayer_Auxiliary_Press_Release_Contact'
          autoload :Press, 'softlayer/auxiliary/press/release/contact/press'
          attr_accessor :email
          attr_accessor :first_name
          attr_accessor :id
          attr_accessor :last_name
          attr_accessor :phone
          attr_accessor :professional_title

          def get_object
            request(:get_object, Softlayer::Auxiliary::Press::Release::Contact)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :email, type: String
            property :first_name, type: String
            property :id, type: Integer
            property :last_name, type: String
            property :phone, type: String
            property :professional_title, type: String
          end
        end
      end
    end
  end
end
