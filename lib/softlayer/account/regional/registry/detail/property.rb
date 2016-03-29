module Softlayer
  class Account
    module Regional
      module Registry
        class Detail
          class Property < Softlayer::Entity
            SERVICE = 'SoftLayer_Account_Regional_Registry_Detail_Property'
            autoload :Type, 'softlayer/account/regional/registry/detail/property/type'
            attr_accessor :create_date
            attr_accessor :id
            attr_accessor :modify_date
            attr_accessor :property_type_id
            attr_accessor :registration_detail_id
            attr_accessor :sequence_position
            attr_accessor :value
            attr_accessor :detail
            attr_accessor :property_type

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Softlayer::Account::Regional::Registry::Detail::Property, message)
            end

            def self.create_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:create_objects, Array[Softlayer::Account::Regional::Registry::Detail::Property], message)
            end

            def delete_object
              request(:delete_object, Boolean)
            end

            def edit_object(template_object = nil)
              message = {template_object: template_object}
              request(:edit_object, Boolean, message)
            end

            def self.edit_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:edit_objects, Boolean, message)
            end

            def get_detail
              request(:get_detail, Softlayer::Account::Regional::Registry::Detail)
            end

            def get_object
              request(:get_object, Softlayer::Account::Regional::Registry::Detail::Property)
            end

            def get_property_type
              request(:get_property_type, Softlayer::Account::Regional::Registry::Detail::Property::Type)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :id, type: Integer
              property :modify_date, type: DateTime
              property :property_type_id, type: Integer
              property :registration_detail_id, type: Integer
              property :sequence_position, type: Integer
              property :value, type: String
            end
          end
        end
      end
    end
  end
end
