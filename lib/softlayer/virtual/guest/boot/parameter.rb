module Softlayer
  module Virtual
    class Guest
      module Boot
        class Parameter < Softlayer::Entity
          SERVICE = 'SoftLayer_Virtual_Guest_Boot_Parameter'
          autoload :Type, 'softlayer/virtual/guest/boot/parameter/type'
          attr_accessor :create_date
          attr_accessor :guest_boot_parameter_type_id
          attr_accessor :guest_id
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :guest
          attr_accessor :guest_boot_parameter_type

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Boolean, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_guest
            request(:get_guest, Softlayer::Virtual::Guest)
          end

          def get_guest_boot_parameter_type
            request(:get_guest_boot_parameter_type, Softlayer::Virtual::Guest::Boot::Parameter::Type)
          end

          def get_object
            request(:get_object, Softlayer::Virtual::Guest::Boot::Parameter)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :guest_boot_parameter_type_id, type: Integer
            property :guest_id, type: Integer
            property :id, type: Integer
            property :modify_date, type: DateTime
          end
        end
      end
    end
  end
end
