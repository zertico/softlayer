module Softlayer
  module User
    module Access
      module Facility
        class Visitor < Softlayer::Model
          autoload :Type, 'softlayer/user/access/facility/visitor/type'
          attr_accessor :company_name
          attr_accessor :first_name
          attr_accessor :last_name
          attr_accessor :type_id
          attr_accessor :visitor_type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :company_name, type: String
            property :first_name, type: String
            property :last_name, type: String
            property :type_id, type: Integer
          end
        end
      end
    end
  end
end
