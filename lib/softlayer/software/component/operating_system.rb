module Softlayer
  module Software
    class Component
      class OperatingSystem < Softlayer::Software::Component
        attr_accessor :partition_template_count
        attr_accessor :license_expiration_date
        attr_accessor :partition_templates
        attr_accessor :reload_transaction_group

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
          property :partition_template_count, type: BigDecimal
          property :license_expiration_date, type: DateTime
        end
      end
    end
  end
end
