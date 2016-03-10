require 'test_helper'

describe Softlayer::Mock::Dns::Domain do
  context "get_domains" do
    it "for Softlayer Account" do
      domains = Softlayer::Mock::Dns::Domain.all
      domains.first.must_be_kind_of Softlayer::Dns::Domain
      domains[0].name.must_equal "zertico.com"
      domains[0].account.company_name.must_equal "Test Mock Example"
    end
  end
end
