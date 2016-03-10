require 'test_helper'

describe Softlayer::Brand, :vcr do
  before(:each) { configure_connection }

  # these tests are commented once there's no BAP account for testing
  # you can test using your own account
  #
  # describe "#get_users" do
  #   it "return all brand users" do
  #     brands = Softlayer::Account.get_owned_brands
  #     brand = brands.first
  #     brand_users = brand.get_users
  #     brand_users.size.must_equal 1
  #     brand_users[0].must_be_kind_of Softlayer::User::Customer
  #   end
  # end
  #
  # describe "#get_hardware" do
  #   it "return all hardware" do
  #     brands = Softlayer::Account.get_owned_brands
  #     brand = brands.first
  #     brand_hardware = brand.get_hardware
  #     brand_hardware.size.must_equal 9
  #     brand_hardware[0].must_be_kind_of Softlayer::Hardware::Server
  #   end
  # end

  context "mock" do
    describe "#get_users" do
      before(:each) { Softlayer.configuration.username = 'SL000000'; Softlayer.mock! }

      it "return all brand users" do
        brands = Softlayer::Account.get_owned_brands
        brand = brands.first
        brand_users = brand.get_users
        brand_users.size.must_equal 2
        brand_users[0].must_be_kind_of Softlayer::User::Customer
        brand.catalog_id.must_equal 15
      end
    end
  end
end
