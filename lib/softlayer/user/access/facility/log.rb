module Softlayer
  module User
    module Access
      module Facility
        class Log < Softlayer::Entity
          autoload :Type, 'softlayer/user/access/facility/log/type'
          attr_accessor :account_id
          attr_accessor :description
          attr_accessor :hardware_id
          attr_accessor :id
          attr_accessor :location_id
          attr_accessor :time_in
          attr_accessor :time_out
          attr_accessor :account
          attr_accessor :datacenter
          attr_accessor :hardware
          attr_accessor :log_type
          attr_accessor :visitor

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :description, type: String
            property :hardware_id, type: Integer
            property :id, type: Integer
            property :location_id, type: Integer
            property :time_in, type: DateTime
            property :time_out, type: DateTime
          end
        end
      end
    end
  end
end
