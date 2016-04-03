module Softlayer
  class Tag < Softlayer::Entity
    SERVICE = 'SoftLayer_Tag'
    autoload :Reference, 'softlayer/tag/reference'
    autoload :Type, 'softlayer/tag/type'
    attr_accessor :account_id
    attr_accessor :id
    attr_accessor :internal
    attr_accessor :name
    attr_accessor :reference_count
    attr_accessor :account
    attr_accessor :references

    # tag
    def self.auto_complete(message)
      request(:auto_complete, Array[Softlayer::Tag], message)
    end

    def get_account
      request(:get_account, Softlayer::Account)
    end

    def self.get_all_tag_types
      request(:get_all_tag_types, Array[Softlayer::Tag::Type])
    end

    def get_object
      request(:get_object, Softlayer::Tag)
    end

    def get_references
      request(:get_references, Array[Softlayer::Tag::Reference])
    end

    # tag_list
    def self.get_tag_by_tag_name(message)
      request(:get_tag_by_tag_name, Array[Softlayer::Tag], message)
    end

    # tags
    # key_name
    # resource_table_id
    def self.set_tags(message)
      request(:set_tags, Boolean, message)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :account_id, type: Integer
      property :id, type: Integer
      property :internal, type: Integer
      property :name, type: String
      property :reference_count, type: BigDecimal
    end
  end
end
