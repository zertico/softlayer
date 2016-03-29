require 'test_helper'

describe Softlayer::Dns::Domain, :vcr do
  before(:each) { configure_connection }

  describe "#all" do
    it "return domains" do
      @domains = Softlayer::Dns::Domain.all
      @domains.size.must_equal 21
      @domains[0].must_be_kind_of Softlayer::Dns::Domain
    end
  end

  describe "#create" do
    it "create a domain" do
      @domain = Softlayer::Dns::Domain.create(name: 'softlayerclient.io', resource_records: {})
      @domain.name.must_equal "softlayerclient.io"
      @domain.resource_records.size.must_equal 3
    end
  end

  describe "#createARecord" do
    it "create A Record" do
      @domain = Softlayer::Dns::Domain.find(1911885)
      @a_record = @domain.create_a_record('subdomain', '127.0.0.1', 7200)
      @a_record.host.must_equal 'subdomain'
      @a_record.must_be_kind_of Softlayer::Dns::Domain::ResourceRecord::AType
    end
  end
end
