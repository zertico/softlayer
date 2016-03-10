module Softlayer
  module Resource
    class Group
      class Member
        module Virtual
          module Host
            class Pool < Softlayer::Resource::Group::Member

              class Representer < Softlayer::Resource::Group::Member::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
