require 'test_helper'

describe Softlayer::Account, :vcr do
  before(:each) { configure_connection }
  describe ".get_object" do
    it "return an account" do
      @account = Softlayer::Account.get_object
      @account.must_be_kind_of Softlayer::Account
      @account.company_name.must_equal "SoftLayer Internal - Development Community"
    end
  end

  # not running to avoid data leakage as api keys
  # describe ".get_users" do
  #   it "return users list" do
  #     users = Softlayer::Account.get_users
  #     users.must_be_kind_of Array
  #     users.size.must_equal 262
  #     users[0].must_be_kind_of Softlayer::User::Customer
  #   end
  # end

  context "mock" do
    describe ".get_object" do
      it "return an account" do
        Softlayer.configuration.username = 'SL000000'
        Softlayer.mock!
        @account = Softlayer::Account.get_object
        @account.must_be_kind_of Softlayer::Account
        @account.company_name.must_equal "Test Mock Example"
      end
    end

    describe ".get_users" do
      it "return an account" do
        Softlayer.configuration.username = 'SL000000'
        Softlayer.mock!
        users = Softlayer::Account.get_users
        users.must_be_kind_of Array
        users.size.must_equal 1
        users[0].must_be_kind_of Softlayer::User::Customer
        users[0].company_name.must_equal "Test Mock Example"
      end
    end

    describe ".get_account_status" do
      it "return a status" do
        Softlayer.configuration.username = 'SL000000'
        Softlayer.mock!
        status = Softlayer::Account.get_account_status
        status.must_be_kind_of Softlayer::Account::Status
        status.name.must_equal "Active"
      end
    end
  end
end
