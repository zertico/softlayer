require 'test_helper'

describe Softlayer::Mock::Account do
  before(:each) { configure_connection; Softlayer.configuration.username = 'SL000000'; Softlayer.mock! }
  context "get_object" do
    it "get a Softlayer Account" do
      account = subject.class.get_object
      account.company_name.must_equal "Test Mock Example"
    end
  end

  context "get_owned_brands" do
    it "for Softlayer Account" do
      owned_brands = subject.class.get_owned_brands
      owned_brand = owned_brands.first
      owned_brand.must_be_kind_of Softlayer::Brand
      owned_brand.id.must_equal 11111
    end
  end
end
