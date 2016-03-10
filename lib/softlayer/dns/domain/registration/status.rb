module Softlayer
  module Dns
    class Domain
      class Registration
        class Status < Softlayer::Model
          SERVICE = 'SoftLayer_Dns_Domain_Registration_Status'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Dns::Domain::Registration::Status])
          end

          def get_object
            request(:get_object, Softlayer::Dns::Domain::Registration::Status)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
