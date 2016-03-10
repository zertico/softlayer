module Softlayer
  class Account
    module Attachment
      class Employee < Softlayer::Model
        autoload :Role, 'softlayer/account/attachment/employee/role'
        attr_accessor :role_id
        attr_accessor :account
        attr_accessor :employee
        attr_accessor :employee_role

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :role_id, type: Integer
        end
      end
    end
  end
end
