module Softlayer
  module Catalyst
    module Company
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Catalyst_Company_Type'
        attr_accessor :description
        attr_accessor :id

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Catalyst::Company::Type])
        end

        def get_object
          request(:get_object, Softlayer::Catalyst::Company::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
        end
      end
    end
  end
end
