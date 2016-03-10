require 'test_helper'

describe Softlayer do
  it "has no configuration present" do
    Softlayer.reset!
    subject.configured?.must_equal false
  end

  it "can be configured" do
    subject.configure do |config|
      config.username = "foo"
      config.api_key = "aaa000aaa00aaa"
    end
    subject.configured?.must_equal true
  end

  it "can reset configuration" do
    subject.configure do |config|
      config.username = "foo"
      config.api_key = "aaa000aaa00aaa"
    end
    Softlayer.reset!
    subject.configured?.must_equal false
  end

  it "has client" do
    subject.configure do |config|
      config.username = "foo"
      config.api_key = "aaa000aaa00aaa"
    end
    client = Softlayer.client
    client.must_be_kind_of Softlayer::Client
  end

  it "impersonate" do
    subject.configure do |config|
      config.impersonate_user = "foo"
      config.impersonate_token = "aaa000aaa00aaa"
    end
    subject.configuration.impersonate_user.must_equal "foo"
    subject.configuration.impersonate_token.must_equal "aaa000aaa00aaa"
    subject.impersonating?.must_equal true
  end

  it "do not impersonate" do
    subject.configure do |config|
      config.impersonate_user = "foo"
      config.impersonate_token = "aaa000aaa00aaa"
    end
    subject.do_not_impersonate!
    subject.configuration.impersonate_user.must_be_nil
    subject.configuration.impersonate_token.must_be_nil
    subject.impersonating?.must_equal false
  end

  it "mock" do
    Softlayer.configure do |config|
      config.impersonate_user = "foo"
      config.impersonate_token = "aaa000aaa00aaa"
      config.mock = true
    end

    Softlayer.unmock!
    Softlayer.mock?.must_equal false

    Softlayer.mock!
    Softlayer.mock?.must_equal true
  end
end
