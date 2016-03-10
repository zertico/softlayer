require 'test_helper'

describe  Softlayer::Mock::Brand do
  context "get_token" do
    it "by user_id" do
      token = subject.get_token(222222)
      token.must_equal "000000aaaa00000aaaa000aaaa0000aa"
    end
  end

  context "create_object" do
    it "create a brand" do
      configure_connection
      Softlayer.configuration.username = 'SL000000'
      Softlayer.mock!
      account = Softlayer::Account.get_object
      attrs =
      {
        :key_name => "acme",
        :long_name => "Long Test Brand Name",
        :name => "Acme inc",
        :account => account
      }
      brand = subject.class.create_object(attrs)
      brand.must_be_kind_of Softlayer::Brand
      brand.key_name.must_equal "acme"
      brand.account.must_equal account
    end
  end
end
