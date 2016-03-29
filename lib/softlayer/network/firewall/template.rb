module Softlayer
  class Network
    module Firewall
      class Template < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Firewall_Template'
        autoload :Rule, 'softlayer/network/firewall/template/rule'
        attr_accessor :id
        attr_accessor :name
        attr_accessor :rule_count
        attr_accessor :rules

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Network::Firewall::Template])
        end

        def get_object
          request(:get_object, Softlayer::Network::Firewall::Template)
        end

        def get_rules
          request(:get_rules, Array[Softlayer::Network::Firewall::Template::Rule])
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :name, type: String
          property :rule_count, type: BigDecimal
        end
      end
    end
  end
end
