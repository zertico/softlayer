module Softlayer
  module Container
    module Catalyst
      class ManualEnrollmentRequest < Softlayer::Entity
        attr_accessor :customer_email
        attr_accessor :customer_name
        attr_accessor :startup_name
        attr_accessor :venture_affiliation_flag
        attr_accessor :venture_fund_name

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :customer_email, type: String
          property :customer_name, type: String
          property :startup_name, type: String
          property :venture_affiliation_flag, type: Boolean
          property :venture_fund_name, type: String
        end
      end
    end
  end
end
