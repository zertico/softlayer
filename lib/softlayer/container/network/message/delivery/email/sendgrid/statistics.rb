module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              class Statistics < Softlayer::Entity
                autoload :Graph, 'softlayer/container/network/message/delivery/email/sendgrid/statistics/graph'
                autoload :Options, 'softlayer/container/network/message/delivery/email/sendgrid/statistics/options'
                attr_accessor :blocks
                attr_accessor :bounces
                attr_accessor :clicks
                attr_accessor :date
                attr_accessor :delivered
                attr_accessor :invalid_email
                attr_accessor :opens
                attr_accessor :repeat_bounces
                attr_accessor :repeat_spam_reports
                attr_accessor :repeat_unsubscribes
                attr_accessor :requests
                attr_accessor :spam_reports
                attr_accessor :unique_clicks
                attr_accessor :unique_opens
                attr_accessor :unsubscribes

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :blocks, type: Integer
                  property :bounces, type: Integer
                  property :clicks, type: Integer
                  property :date, type: String
                  property :delivered, type: Integer
                  property :invalid_email, type: Integer
                  property :opens, type: Integer
                  property :repeat_bounces, type: Integer
                  property :repeat_spam_reports, type: Integer
                  property :repeat_unsubscribes, type: Integer
                  property :requests, type: Integer
                  property :spam_reports, type: Integer
                  property :unique_clicks, type: Integer
                  property :unique_opens, type: Integer
                  property :unsubscribes, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
