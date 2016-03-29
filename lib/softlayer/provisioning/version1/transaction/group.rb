module Softlayer
  module Provisioning
    module Version1
      class Transaction
        class Group < Softlayer::Entity
          SERVICE = 'SoftLayer_Provisioning_Version1_Transaction_Group'
          attr_accessor :average_time_to_complete
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Provisioning::Version1::Transaction::Group])
          end

          def get_object
            request(:get_object, Softlayer::Provisioning::Version1::Transaction::Group)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :average_time_to_complete, type: Float
            property :name, type: String
          end
        end
      end
    end
  end
end
