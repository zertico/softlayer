module Softlayer
  module Software
    class Component
      class AntivirusSpyware
        class Mcafee
          module Epo
            class Version36 < Softlayer::Software::Component::AntivirusSpyware::Mcafee
              attr_accessor :epo_version
              attr_accessor :latest_access_protection_event_count
              attr_accessor :latest_antivirus_event_count
              attr_accessor :latest_spyware_event_count
              attr_accessor :agent_details
              attr_accessor :current_antivirus_policy
              attr_accessor :data_file_version
              attr_accessor :latest_access_protection_events
              attr_accessor :latest_antivirus_events
              attr_accessor :latest_spyware_events
              attr_accessor :transaction_status

              class Representer < Softlayer::Software::Component::AntivirusSpyware::Mcafee::Representer
                include Representable::Hash
                include Representable::Coercion
                property :epo_version, type: String
                property :latest_access_protection_event_count, type: BigDecimal
                property :latest_antivirus_event_count, type: BigDecimal
                property :latest_spyware_event_count, type: BigDecimal
                property :current_antivirus_policy, type: Integer
                property :transaction_status, type: String
              end
            end
          end
        end
      end
    end
  end
end
