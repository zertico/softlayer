# Dependencies
require 'bigdecimal'
require 'savon'
require 'virtus'
require 'hashie'
require 'representable'
require 'representable/hash'
require 'representable/coercion'
require 'active_support'
require 'active_support/core_ext'
ActiveSupport::TestCase.test_order = :random

# Library
require 'softlayer/model'
require 'softlayer/boolean'

require 'softlayer/abuse'
require 'softlayer/account'
require 'softlayer/auxiliary'
require 'softlayer/big_decimal'
require 'softlayer/billing'
require 'softlayer/boolean'
require 'softlayer/brand'
require 'softlayer/catalyst'
require 'softlayer/client'
require 'softlayer/compliance'
require 'softlayer/config'
require 'softlayer/configuration'
require 'softlayer/container'
require 'softlayer/dns'
require 'softlayer/entity'
require 'softlayer/errors'
require 'softlayer/event'
require 'softlayer/flexible_credit'
require 'softlayer/float'
require 'softlayer/generator'
require 'softlayer/hardware'
require 'softlayer/layout'
require 'softlayer/locale'
require 'softlayer/location'
require 'softlayer/marketplace'
require 'softlayer/mc_afee'
require 'softlayer/metric'
require 'softlayer/monitoring'
require 'softlayer/network'
require 'softlayer/notification'
require 'softlayer/product'
require 'softlayer/provisioning'
require 'softlayer/resource'
require 'softlayer/sales'
require 'softlayer/scale'
require 'softlayer/security'
require 'softlayer/service'
require 'softlayer/software'
require 'softlayer/survey'
require 'softlayer/tag'
require 'softlayer/ticket'
require 'softlayer/user'
require 'softlayer/utility'
require 'softlayer/version'
require 'softlayer/virtual'

# Monkeypatch
require 'representable_patch'

HTTPI.adapter = :excon

I18n.load_path << File.join(File.dirname(__FILE__), 'config', 'locales', 'en.yml')

module Softlayer
  class << self
    # Softlayer gem configuration.
    attr_accessor :configuration

    def root
      File.dirname(__FILE__)
    end

    # Returns true if the gem has been configured.
    def configured?
      configuration.present?
    end

    # Configure the gem.
    def configure
      self.configuration ||= Config.new
      yield configuration
    end

    # Reset the current configuration.
    def reset!
      self.configuration = nil
      @client = nil
    end

    # The configured SOAP client to the Softlayer service.
    def client
      check_configuration!
      @client ||= Softlayer::Client.new("SoftLayer_Account")
    end

    def impersonate(user, token)
      self.configuration.impersonate_user = user
      self.configuration.impersonate_token = token
      true
    end

    def do_not_impersonate!
      self.configuration.impersonate_user = nil
      self.configuration.impersonate_token = nil
    end

    def impersonating?
      !self.configuration.impersonate_user.nil? && !self.configuration.impersonate_token.nil?
    end

    #Change mock state
    def mock!
      self.configuration.mock = true
    end

    def unmock!
      self.configuration.mock = false
    end

    #Check state of mock
    def mock?
      self.configuration.mock
    end

    private

    def check_configuration!
      fail Softlayer::Errors::MissingConfig.new unless self.configuration
      self.configuration.check!
    end
  end
end
