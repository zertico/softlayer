module Softlayer
  module Dns
    class Domain
      class ResourceRecord
        class MxType < Softlayer::Dns::Domain::ResourceRecord
          SERVICE = 'SoftLayer_Dns_Domain_ResourceRecord_MxType'

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Dns::Domain::ResourceRecord::MxType, message)
          end

          # template_objects
          def self.create_objects(message)
            request(:create_objects, Array[Softlayer::Dns::Domain::ResourceRecord], message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          # template_objects
          def self.delete_objects(message)
            request(:delete_objects, Boolean, message)
          end

          # template_object
          def edit_object(message)
            request(:edit_object, Boolean, message)
          end

          # template_objects
          def self.edit_objects(message)
            request(:edit_objects, Boolean, message)
          end

          def get_domain
            request(:get_domain, Softlayer::Dns::Domain)
          end

          def get_object
            request(:get_object, Softlayer::Dns::Domain::ResourceRecord::MxType)
          end

          class Representer < Softlayer::Dns::Domain::ResourceRecord::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
