require 'test_helper'

describe Softlayer::Generator::DataType do
  it "has data types" do
    subject.send('set_types', @data_types)
    subject.types.size.must_equal 1002
  end

  it "return direct descendants for class" do
    subject.send('set_types', @data_types)
    children = subject.children_for("SoftLayer_Account")
    children.size.must_equal 13
  end

  it "check object type" do
    # together to make test fast
    subject.object_type("SoftLayer_Account_Network_Vlan_Span").must_equal :class
    subject.object_type("SoftLayer_Account_Network").must_equal :module
  end

  it "consider Object Filter not valid type" do
    subject.valid_type?("Version36_Agent_DetailsObjectFilter").must_equal false
  end

  it "consider Array not valid type" do
    subject.valid_type?("Version36_Agent_DetailsObjectArray").must_equal false
  end

  it "clean data types" do
    types = %w{ authenticate resultLimit totalItems SoftLayer_Utility_ObjectFilter_Operation SoftLayer_Utility_ObjectFilter_Operation_Option SoftLayer_ObjectMask SoftLayer_Utility_ObjectFilter }
    subject.clean_data_types(types).must_be_empty
  end

  it "parse type attributes" do
    attrs = subject.attributes_for("SoftLayer_Account")
    attrs.size.must_equal 428
    attrs[:virtual_guests].must_equal "Array[Softlayer::Virtual::Guest]"
  end

  it "parse parent class" do
    subject.parent_for("SoftLayer_Dns_Domain_ResourceRecord_AType").must_equal "SoftLayer_Dns_Domain_ResourceRecord"
  end

  it "return empty array for unknown element" do
    attrs = subject.attributes_for("Foo")
    attrs.must_be_kind_of Array
    attrs.must_be_empty
  end

  context ".all_elements" do
    it "include modules" do
      all_elements = subject.all_elements
      all_elements.size.must_equal 1438
      all_elements.include?('SoftLayer_Account_Regional').must_equal true
      all_elements.include?('SoftLayer_Account_Regional_Registry').must_equal true
      all_elements.include?('SoftLayer_Account_Regional_Registry_Detail').must_equal true
      all_elements.include?('SoftLayer_Account_Regional_Registry_Detail_Version4').must_equal true
      all_elements.include?('SoftLayer_Account_Regional_Registry_Detail_Version4_Person').must_equal true
      all_elements.include?('SoftLayer_Account_Regional_Registry_Detail_Version4_Person_Default').must_equal true
    end
  end
  
  context ".autoload_for" do
    it "return classes" do
      subject.autoload_for('SoftLayer_Account').include?([:Regional, 'softlayer/account/regional']).must_equal true

      subject.autoload_for('SoftLayer_Account_Regional').include?([:Registry, 'softlayer/account/regional/registry']).must_equal true

      subject.autoload_for('SoftLayer_Account_Regional_Registry').include?([:Detail, 'softlayer/account/regional/registry/detail']).must_equal true

      subject.autoload_for('SoftLayer_Account_Regional_Registry_Detail').include?([:Version4, 'softlayer/account/regional/registry/detail/version4']).must_equal true

      subject.autoload_for('SoftLayer_Account_Regional_Registry_Detail_Version4').include?([:Person, 'softlayer/account/regional/registry/detail/version4/person']).must_equal true
    end
  end
end
