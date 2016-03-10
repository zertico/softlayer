module Softlayer
  module Legal
    class RegulatedWorkload < Softlayer::Model
      autoload :Type, 'softlayer/legal/regulated_workload/type'
      attr_accessor :account_id
      attr_accessor :enabled_flag
      attr_accessor :id
      attr_accessor :workload_type_id
      attr_accessor :account
      attr_accessor :type

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :enabled_flag, type: Boolean
        property :id, type: Integer
        property :workload_type_id, type: Integer
      end
    end
  end
end
