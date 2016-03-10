module Softlayer
  module Resource
    class Group
      class Member
        class Hardware < Softlayer::Resource::Group::Member
          attr_accessor :resource
          attr_accessor :server_arbiter_only
          attr_accessor :server_hidden
          attr_accessor :server_priority
          attr_accessor :server_slave_delay
          attr_accessor :server_tags
          attr_accessor :server_votes

          class Representer < Softlayer::Resource::Group::Member::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
