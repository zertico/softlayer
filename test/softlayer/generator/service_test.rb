require 'test_helper'

describe Softlayer::Generator::Service do
  subject { Softlayer::Generator::Service.new('SoftLayer_Brand') }
  
  it "has name" do
    subject.name.must_equal "SoftLayer_Brand"
  end
  
  it "has 24 document methods" do
    subject.document_methods.size.must_equal 24
  end
  
  it "return parameters for document method" do
    methods = subject.document_method_params(:create_customer_account)
    methods.size.must_equal 2
    methods[0][:name].must_equal "account"
    methods[0][:type].must_equal "Softlayer::Account"
    methods[1][:name].must_equal "bypass_duplicate_account_check"
    methods[1][:type].must_equal "Boolean"
  end
  
  it "return document method response" do
    response = subject.document_method_response(:create_customer_account)
    response.must_equal "Softlayer::Account"
  end

  it "can process all document methods" do
    subject.document_methods.each { |x| subject.document_method_params(x) }
  end

  it "returns its representation hash" do
    hash = subject.representation_hash
    hash.size.must_equal 24
  end

  it "#createObject does not need id" do
    subject.message_needs_id?(:create_object).must_equal false
  end

  it "#createObject does not need id" do
    subject.message_needs_id?(:get_token).must_equal true
  end
end