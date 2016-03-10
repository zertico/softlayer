module Softlayer
  class Hardware
    class Note < Softlayer::Model
      autoload :Type, 'softlayer/hardware/note/type'
      attr_accessor :create_date
      attr_accessor :hardware_id
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :note
      attr_accessor :type_id
      attr_accessor :user_record_id
      attr_accessor :employee
      attr_accessor :hardware
      attr_accessor :type
      attr_accessor :user

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :hardware_id, type: Integer
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :note, type: String
        property :type_id, type: Integer
        property :user_record_id, type: Integer
      end
    end
  end
end
