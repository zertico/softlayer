module Softlayer
  module Virtual
    class Guest
      module Block
        class Device
          class Template
            class Group
              class Accounts < Softlayer::Entity
                attr_accessor :account_id
                attr_accessor :create_date
                attr_accessor :group_id
                attr_accessor :account
                attr_accessor :group

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :account_id, type: Integer
                  property :create_date, type: DateTime
                  property :group_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
