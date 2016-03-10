module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              module Customer
                class Profile < Softlayer::Model
                  attr_accessor :address
                  attr_accessor :city
                  attr_accessor :country
                  attr_accessor :email
                  attr_accessor :first_name
                  attr_accessor :last_name
                  attr_accessor :phone
                  attr_accessor :state
                  attr_accessor :website
                  attr_accessor :zip

                  class Representer < Representable::Decorator
                    include Representable::Hash
                    include Representable::Coercion
                    property :address, type: String
                    property :city, type: String
                    property :country, type: String
                    property :email, type: String
                    property :first_name, type: String
                    property :last_name, type: String
                    property :phone, type: String
                    property :state, type: String
                    property :website, type: String
                    property :zip, type: String
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
