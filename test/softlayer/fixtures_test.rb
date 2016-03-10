require 'test_helper'

describe Softlayer::Fixtures do
  context "load" do
    it "database content" do
      subject.class.load
      $database.class.must_equal Hash
      $database.has_key?("Softlayer::Account").must_equal true
      $database.has_key?(:relationships).must_equal true
    end

    it "check ruby code is imported" do
      account = $database["Softlayer::Account"]['SL000000']
      account.create_date.must_be_kind_of Date
      account.modify_date.must_equal Date.parse("Tue, 28 Apr 2000 14:55:39 -0500")
    end
  end

  context "find_object" do
    it "get one object by type and id" do
      account = subject.class.find_object("Softlayer::Account",'SL000000')
      account.must_be_kind_of Softlayer::Account
      account.id.must_equal 111111
    end
  end

  context "set_relationships" do
    it "check if relationships are corrects" do
      subject.class.set_relationships
      account = subject.class.find_object("Softlayer::Account",'SL000000')
      account.domains.class.must_equal Array
      account.domains.first.must_be_kind_of Softlayer::Dns::Domain
      account.domains.first.name.must_equal "zertico.com"
      account.domains[1].name.must_equal "horus.com"
    end

    it "check relations between models" do
      account = subject.class.find_object("Softlayer::Account",'SL000000')
      zertico_domain = subject.class.find_object("Softlayer::Dns::Domain",'zertico')
      horus_domain = subject.class.find_object("Softlayer::Dns::Domain",'horus')

      zertico_domain.account.must_equal account
      assert account.domains.include?(horus_domain)
    end
  end

  context "save_on_database" do
    it "save a copy of object on database" do
      account = subject.class.find_object("Softlayer::Account",'SL000000')
      subject.class.save_on_database('SL000002',account)
      assert $database["Softlayer::Account"].has_key?('SL000002').must_equal true
      account2 = subject.class.find_object("Softlayer::Account",'SL000002')
      assert account.must_equal account2
    end
  end

  context "set_attributes" do
    it "create a new object and set the attributes" do
      domain = Softlayer::Dns::Domain.new
      file = File.join(subject.class.fixtures_dir,'softlayer/dns/domains.yml')
      objects = YAML.load(ERB.new(File.read(file)).result)
      domain = subject.class.set_attributes('zertico',objects["Softlayer::Dns::Domain"]['zertico'],domain)
      assert domain.name.must_equal 'zertico.com'
      assert domain.must_be_kind_of Softlayer::Dns::Domain
    end
  end
end
