module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email < Softlayer::Entity
            autoload :Sendgrid, 'softlayer/container/network/message/delivery/email/sendgrid'
            attr_accessor :body
            attr_accessor :contains_html
            attr_accessor :from
            attr_accessor :subject
            attr_accessor :to

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :body, type: String
              property :contains_html, type: Boolean
              property :from, type: String
              property :subject, type: String
              property :to, type: String
            end
          end
        end
      end
    end
  end
end
