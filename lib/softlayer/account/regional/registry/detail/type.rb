module Softlayer
  class Account
    module Regional
      module Registry
        class Detail
          class Type < Softlayer::Entity
            SERVICE = 'SoftLayer_Account_Regional_Registry_Detail_Type'
            attr_accessor :create_date
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :modify_date
            attr_accessor :name

            def self.get_all_objects
              request(:get_all_objects, Array[Softlayer::Account::Regional::Registry::Detail::Type])
            end

            def get_object
              request(:get_object, Softlayer::Account::Regional::Registry::Detail::Type)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :id, type: Integer
              property :key_name, type: String
              property :modify_date, type: DateTime
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
