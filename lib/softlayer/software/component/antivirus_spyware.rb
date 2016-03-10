module Softlayer
  module Software
    class Component
      class AntivirusSpyware < Softlayer::Software::Component
        SERVICE = 'SoftLayer_Software_Component_AntivirusSpyware'
        autoload :Mcafee, 'softlayer/software/component/antivirus_spyware/mcafee'

        def get_average_installation_duration
          request(:get_average_installation_duration, BigDecimal)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_hardware
          request(:get_hardware, Softlayer::Hardware)
        end

        def get_license_file
          request(:get_license_file, String)
        end

        def get_object
          request(:get_object, Softlayer::Software::Component::AntivirusSpyware)
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

        def update_antivirus_spyware_policy(new_policy = nil)
          message = {new_policy: new_policy}
          request(:update_antivirus_spyware_policy, Boolean, message)
        end

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
