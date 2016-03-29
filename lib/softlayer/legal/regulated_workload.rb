module Softlayer
  module Legal
    class RegulatedWorkload < Softlayer::Entity
      autoload :Type, 'softlayer/legal/regulated_workload/type'
      attr_accessor :account_id
      attr_accessor :enabled_flag
      attr_accessor :id
      attr_accessor :workload_type_id
      attr_accessor :account
      attr_accessor :type

      class Representer < Softlayer::Entity::Representer
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
