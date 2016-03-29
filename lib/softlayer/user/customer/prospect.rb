module Softlayer
  module User
    class Customer
      class Prospect < Softlayer::Entity
        autoload :Type, 'softlayer/user/customer/prospect/type'
        autoload :ServiceProvider, 'softlayer/user/customer/prospect/service_provider'
        attr_accessor :assigned_employee_count
        attr_accessor :quote_count
        attr_accessor :account
        attr_accessor :assigned_employees
        attr_accessor :quotes
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :assigned_employee_count, type: BigDecimal
          property :quote_count, type: BigDecimal
        end
      end
    end
  end
end
