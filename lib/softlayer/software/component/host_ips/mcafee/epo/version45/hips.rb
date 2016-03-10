module Softlayer
  module Software
    class Component
      class HostIps
        class Mcafee
          module Epo
            module Version45
              class Hips < Softlayer::Software::Component::HostIps::Mcafee
                autoload :Version7, 'softlayer/software/component/host_ips/mcafee/epo/version45/hips/version7'
                autoload :Version8, 'softlayer/software/component/host_ips/mcafee/epo/version45/hips/version8'
                attr_accessor :epo_version
                attr_accessor :application_mode_policy_name_count
                attr_accessor :application_rule_set_policy_name_count
                attr_accessor :blocked_application_event_count
                attr_accessor :enforcement_policy_name_count
                attr_accessor :firewall_mode_policy_name_count
                attr_accessor :firewall_rule_set_policy_name_count
                attr_accessor :ips_event_count
                attr_accessor :ips_mode_policy_name_count
                attr_accessor :ips_protection_policy_name_count
                attr_accessor :agent_details
                attr_accessor :application_mode_policy_names
                attr_accessor :application_rule_set_policy_names
                attr_accessor :blocked_application_events
                attr_accessor :enforcement_policy_names
                attr_accessor :firewall_mode_policy_names
                attr_accessor :firewall_rule_set_policy_names
                attr_accessor :ips_events
                attr_accessor :ips_mode_policy_names
                attr_accessor :ips_protection_policy_names
                attr_accessor :transaction_status

                class Representer < Softlayer::Software::Component::HostIps::Mcafee::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :epo_version, type: String
                  property :application_mode_policy_name_count, type: BigDecimal
                  property :application_rule_set_policy_name_count, type: BigDecimal
                  property :blocked_application_event_count, type: BigDecimal
                  property :enforcement_policy_name_count, type: BigDecimal
                  property :firewall_mode_policy_name_count, type: BigDecimal
                  property :firewall_rule_set_policy_name_count, type: BigDecimal
                  property :ips_event_count, type: BigDecimal
                  property :ips_mode_policy_name_count, type: BigDecimal
                  property :ips_protection_policy_name_count, type: BigDecimal
                  property :transaction_status, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
