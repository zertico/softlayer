module Softlayer
  module Security
    class Certificate
      class Entry < Softlayer::Model
        attr_accessor :certificate_id
        attr_accessor :common_name
        attr_accessor :key_size
        attr_accessor :organization_name
        attr_accessor :validity_begin
        attr_accessor :validity_days
        attr_accessor :validity_end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :certificate_id, type: Integer
          property :common_name, type: String
          property :key_size, type: Integer
          property :organization_name, type: String
          property :validity_begin, type: DateTime
          property :validity_days, type: Integer
          property :validity_end, type: DateTime
        end
      end
    end
  end
end
