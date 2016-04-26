require 'test_helper'

describe 'Softlayer::Generator::Service (Account)' do
  subject { Softlayer::Generator::Service.new('Account') }
  
  it "has name" do
    subject.name.must_equal "Account"
  end
  
  it "has 290 document methods" do
    subject.document_methods.size.must_equal 290
  end
  
  it "return parameters for document method" do
    methods = subject.document_method_params(:get_account_backup_history)
    methods.size.must_equal 3
    methods[0][:name].must_equal "start_date"
    methods[0][:type].must_equal "DateTime"
    methods[1][:name].must_equal "end_date"
    methods[1][:type].must_equal "DateTime"
    methods[2][:name].must_equal "backup_status"
    methods[2][:type].must_equal "String"
  end

  it "return document method response" do
    response = subject.document_method_response(:get_executive_summary_pdf)
    response.must_equal "Softlayer::Base64Binary"
  end
end