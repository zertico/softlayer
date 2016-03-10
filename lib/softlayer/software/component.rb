module Softlayer
  module Software
    class Component < Softlayer::Model
      SERVICE = 'SoftLayer_Software_Component'
      autoload :Analytics, 'softlayer/software/component/analytics'
      autoload :AntivirusSpyware, 'softlayer/software/component/antivirus_spyware'
      autoload :ControlPanel, 'softlayer/software/component/control_panel'
      autoload :HostIps, 'softlayer/software/component/host_ips'
      autoload :OperatingSystem, 'softlayer/software/component/operating_system'
      autoload :Package, 'softlayer/software/component/package'
      autoload :Password, 'softlayer/software/component/password'
      attr_accessor :hardware_id
      attr_accessor :id
      attr_accessor :manufacturer_activation_code
      attr_accessor :manufacturer_license_instance
      attr_accessor :password_count
      attr_accessor :password_history_count
      attr_accessor :average_installation_duration
      attr_accessor :billing_item
      attr_accessor :hardware
      attr_accessor :password_history
      attr_accessor :passwords
      attr_accessor :software_description
      attr_accessor :software_license
      attr_accessor :virtual_guest

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
        request(:get_object, Softlayer::Software::Component)
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

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :hardware_id, type: Integer
        property :id, type: Integer
        property :manufacturer_activation_code, type: String
        property :manufacturer_license_instance, type: String
        property :password_count, type: BigDecimal
        property :password_history_count, type: BigDecimal
        property :average_installation_duration, type: BigDecimal
      end
    end
  end
end
