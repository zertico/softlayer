module Softlayer
  class Tag < Softlayer::Model
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

    def self.auto_complete(tag = nil)
      message = {tag: tag}
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

    def self.get_tag_by_tag_name(tag_list = nil)
      message = {tag_list: tag_list}
      request(:get_tag_by_tag_name, Array[Softlayer::Tag], message)
    end

    def self.set_tags(tags = nil, key_name = nil, resource_table_id = nil)
      message = {tags: tags, key_name: key_name, resource_table_id: resource_table_id}
      request(:set_tags, Boolean, message)
    end

    class Representer < Representable::Decorator
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
