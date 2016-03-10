require 'test_helper'

describe "Impersonate", :vcr do
  before(:each) { configure_connection }

  # this tests is commented once there's no BAP account for testing
  # you can test using your own account
  #
  # it "return the impersonated user account" do
  #   user_id = 123456 # your user id
  #   account_id = 123456
  #   brands = Softlayer::Account.get_owned_brands
  #   brand = brands.first
  #   token = brand.get_token(user_id)
  #   Softlayer.impersonate(user_id, token)
  #   account = Softlayer::Account.get_object
  #   account.company_name.must_equal "Test Example"
  #   account.id.must_equal account_id
  # end

  context "mock" do
    it "return the impersonated user account" do
      Softlayer.configuration.username = 'SL000000'
      Softlayer.mock!
      brands = Softlayer::Account.get_owned_brands
      brand = brands.first
      token = brand.get_token(222222)
      Softlayer.impersonate(222222, token)
      account = Softlayer::Account.get_object
      account.company_name.must_equal "Test Mock Example"
      account.id.must_equal 111111
    end
  end
end
