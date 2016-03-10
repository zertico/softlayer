require 'test_helper'

describe Softlayer::Mock do
  before(:each) { configure_connection }
  context "request" do
    it "get_object" do
      Softlayer.configuration.username = 'SL000000'
      Softlayer::Mock.request('Softlayer_Account', :get_object, Softlayer::Account, {}).must_be_kind_of Softlayer::Account
    end

    it "get_domains" do
      domains = Softlayer::Mock.request('Softlayer_Dns_Domain', :all, [Softlayer::Dns::Domain], {})
      domains.first.must_be_kind_of Softlayer::Dns::Domain
      domains[0].name.must_equal "zertico.com"
    end
  end

  context "find" do
    it "SoftLayer Account" do
      obj = Softlayer::Mock.request('Softlayer_Account', :find, Softlayer::Account, {:master_user_id => 222222})
      obj.must_be_kind_of Softlayer::Account
      obj.company_name.must_equal "Test Mock Example"
    end
    it "SoftLayer DNS Domain" do
      
      obj = Softlayer::Mock.request("Softlayer_Dns_Domain", :find, Softlayer::Dns::Domain, {:id => 12345678})
      obj.must_be_kind_of Softlayer::Dns::Domain
      obj.name.must_equal "zertico.com"
    end
  end
end
