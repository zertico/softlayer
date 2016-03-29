module Softlayer
  class Network
    module Protection
      class Address < Softlayer::Entity
        attr_accessor :department_id
        attr_accessor :ip_address
        attr_accessor :management_method_type
        attr_accessor :transaction_count
        attr_accessor :account
        attr_accessor :location
        attr_accessor :modified_user
        attr_accessor :primary_router
        attr_accessor :service_provider
        attr_accessor :subnet
        attr_accessor :subnet_ip_address
        attr_accessor :terminated_user
        attr_accessor :ticket
        attr_accessor :transactions
        attr_accessor :user_department
        attr_accessor :user_record

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :department_id, type: Integer
          property :ip_address, type: String
          property :management_method_type, type: String
          property :transaction_count, type: BigDecimal
        end
      end
    end
  end
end
