module Softlayer
  module Software
    class Component
      class HostIps < Softlayer::Software::Component
        SERVICE = 'SoftLayer_Software_Component_HostIps'
        autoload :Mcafee, 'softlayer/software/component/host_ips/mcafee'

        def get_average_installation_duration
          request(:get_average_installation_duration, BigDecimal)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_current_host_ips_policies
          request(:get_current_host_ips_policies, Array[Softlayer::Container::Software::Component::HostIps::Policy])
        end

        def get_hardware
          request(:get_hardware, Softlayer::Hardware)
        end

        def get_license_file
          request(:get_license_file, String)
        end

        def get_object
          request(:get_object, Softlayer::Software::Component::HostIps)
        end

        def get_password_history
          request(:get_password_history, Array[Softlayer::Software::Component::Password::History])
        end

        def get_passwords
          request(:get_passwords, Array[Softlayer::Software::Component::Password])
        end

        def get_software_description
          request(:get_software_description, Softlayer::Software::Description)
        end

        def get_software_license
          request(:get_software_license, Softlayer::Software::License)
        end

        def get_vendor_set_up_configuration
          request(:get_vendor_set_up_configuration, String)
        end

        def get_virtual_guest
          request(:get_virtual_guest, Softlayer::Virtual::Guest)
        end

        # new_ips_mode
        # new_ips_protection
        # new_firewall_mode
        # new_firewall_ruleset
        # new_application_mode
        # new_application_ruleset
        # new_enforcement_policy
        def update_hips_policies(message)
          request(:update_hips_policies, Boolean, message)
        end

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
