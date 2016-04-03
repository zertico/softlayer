module Softlayer
  module Marketplace
    class Partner < Softlayer::Entity
      SERVICE = 'SoftLayer_Marketplace_Partner'
      autoload :Attachment, 'softlayer/marketplace/partner/attachment'
      autoload :File, 'softlayer/marketplace/partner/file'
      attr_accessor :account_id
      attr_accessor :attached_files
      attr_accessor :company_description
      attr_accessor :company_name
      attr_accessor :headline_description
      attr_accessor :id
      attr_accessor :link_free_trial
      attr_accessor :link_order_page
      attr_accessor :link_website
      attr_accessor :meta_description
      attr_accessor :meta_keywords
      attr_accessor :product_benefits
      attr_accessor :product_category_id
      attr_accessor :product_description_long
      attr_accessor :product_description_short
      attr_accessor :product_features
      attr_accessor :product_name
      attr_accessor :product_title
      attr_accessor :url_identifier
      attr_accessor :attachment_count
      attr_accessor :attachments
      attr_accessor :logo_medium
      attr_accessor :logo_medium_temp
      attr_accessor :logo_small
      attr_accessor :logo_small_temp

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Marketplace::Partner])
      end

      # search_term
      def self.get_all_published_partners(message)
        request(:get_all_published_partners, Array[Softlayer::Marketplace::Partner], message)
      end

      def get_attachments
        request(:get_attachments, Array[Softlayer::Marketplace::Partner::Attachment])
      end

      # non
      def self.get_featured_partners(message)
        request(:get_featured_partners, Array[Softlayer::Marketplace::Partner], message)
      end

      # name
      def get_file(message)
        request(:get_file, Softlayer::Marketplace::Partner::File, message)
      end

      def get_logo_medium
        request(:get_logo_medium, Softlayer::Marketplace::Partner::Attachment)
      end

      def get_logo_medium_temp
        request(:get_logo_medium_temp, Softlayer::Marketplace::Partner::Attachment)
      end

      def get_logo_small
        request(:get_logo_small, Softlayer::Marketplace::Partner::Attachment)
      end

      def get_logo_small_temp
        request(:get_logo_small_temp, Softlayer::Marketplace::Partner::Attachment)
      end

      def get_object
        request(:get_object, Softlayer::Marketplace::Partner)
      end

      # url_identifier
      def self.get_partner_by_url_identifier(message)
        request(:get_partner_by_url_identifier, Softlayer::Marketplace::Partner, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :company_description, type: String
        property :company_name, type: String
        property :headline_description, type: String
        property :id, type: Integer
        property :link_free_trial, type: String
        property :link_order_page, type: String
        property :link_website, type: String
        property :meta_description, type: String
        property :meta_keywords, type: String
        property :product_benefits, type: String
        property :product_category_id, type: Integer
        property :product_description_long, type: String
        property :product_description_short, type: String
        property :product_features, type: String
        property :product_name, type: String
        property :product_title, type: String
        property :url_identifier, type: String
        property :attachment_count, type: BigDecimal
      end
    end
  end
end
