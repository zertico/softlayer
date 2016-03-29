module Softlayer
  class Account
    class Note
      class History < Softlayer::Entity
        attr_accessor :account_note_id
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :note
        attr_accessor :user_id
        attr_accessor :account_note
        attr_accessor :customer

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_note_id, type: Integer
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :note, type: String
          property :user_id, type: Integer
        end
      end
    end
  end
end
