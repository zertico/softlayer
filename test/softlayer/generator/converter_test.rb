require 'test_helper'

describe Softlayer::Generator::Converter do
  # types
  it "convert array" do
    subject.class.type("tns:SoftLayer_TicketArray").must_equal "Array[Softlayer::Ticket]"
  end
  
  it "convert type" do
    subject.class.type("tns:SoftLayer_Account").must_equal "Softlayer::Account"
  end

  it "convert ns1 type" do
    subject.class.type("ns1:SoftLayer_Account").must_equal "Softlayer::Account"
  end

  it "convert iscsi os type" do
    subject.class.type("SoftLayer_Network_Storage_Iscsi_OS_Type").must_equal "Softlayer::Network::Storage::Iscsi::Os::Type"
  end

  it "convert iscsi os type" do
    subject.class.type("PortalLoginToken").must_equal "Softlayer::PortalLoginToken"
  end

  it "convert xsd boolean" do
    subject.class.type("xsd:boolean").must_equal "Boolean"
  end
  
  it "convert boolean" do
    subject.class.type("boolean").must_equal "Boolean"
  end

  it "convert int" do
    subject.class.type("xsd:int").must_equal "Integer"
  end

  it "convert xsd string" do
    subject.class.type("xsd:string").must_equal "String"
  end

  it "convert string" do
    subject.class.type("string").must_equal "String"
  end

  it "convert xsd datetime" do
    subject.class.type("xsd:dateTime").must_equal "DateTime"
  end

  it "convert datetime" do
    subject.class.type("dateTime").must_equal "DateTime"
  end

  it "convert xsd unsigned int" do
    subject.class.type("xsd:unsignedInt").must_equal "Integer"
  end

  it "convert unsigned int" do
    subject.class.type("unsignedInt").must_equal "Integer"
  end

  it "convert unsigned long" do
    subject.class.type("unsignedLong").must_equal "BigDecimal"
  end
  
  it "convert xsd base64 binary" do
    subject.class.type("xsd:base64Binary").must_equal "Softlayer::Base64Binary"
  end

  it "convert base64 binary" do
    subject.class.type("base64Binary").must_equal "Softlayer::Base64Binary"
  end

  it "convert xsd float" do
    subject.class.type("xsd:float").must_equal "Float"
  end

  it "convert float" do
    subject.class.type("float").must_equal "Float"
  end

  it "convert xsd decimal" do
    subject.class.type("xsd:decimal").must_equal "Float"
  end

  it "convert decimal" do
    subject.class.type("decimal").must_equal "Float"
  end

  it "convert authenticate" do
    subject.class.type("authenticate").must_equal "authenticate"
  end

  it "convert resultLimit" do
    subject.class.type("resultLimit").must_equal "resultLimit"
  end

  it "convert totalItems" do
    subject.class.type("totalItems").must_equal "totalItems"
  end

  it "tns:SoftLayer_User_CustomerArray" do
    subject.class.type("tns:SoftLayer_User_CustomerArray").must_equal "Array[Softlayer::User::Customer]"
  end

  it "tns:SoftLayer_User_Customer" do
    subject.class.type("tns:SoftLayer_User_Customer").must_equal "Softlayer::User::Customer"
  end

  it "McAfee objects" do
    subject.class.type("McAfee_Epolicy_Orchestrator").must_equal "Softlayer::McAfee::Epolicy::Orchestrator"
  end

  it "SoftLayer objects" do
    subject.class.type("SoftLayer_Abuse_Lockdown_Resource").must_equal "Softlayer::Abuse::Lockdown::Resource"
  end

  it "SoftLayer tns:ArrayOfstrings" do
    subject.class.type("tns:ArrayOfstring").must_equal "Array[String]"
  end

  it "SoftLayer ArrayOfstrings" do
    subject.class.type("ArrayOfstring").must_equal "Array[String]"
  end

  it "SoftLayer arrayOfint" do
    subject.class.type("ArrayOfint").must_equal "Array[Integer]"
  end

  it "SoftLayer json" do
    subject.class.type("json").must_equal "Softlayer::Json"
  end

  it "SoftLayer nonNegativeInteger" do
    subject.class.type("nonNegativeInteger").must_equal "Integer"
  end

  # message names
  it "message get_evault_capacity_gb" do
    subject.class.message_name("get_evault_capacity_gb").must_equal "getEvaultCapacityGB"
  end
  
  it "message get_tokens" do
    subject.class.message_name("get_tokens").must_equal "getTokens"
  end

  it "message new_get_bandwidth_image" do
    subject.class.message_name("new_get_bandwidth_image").must_equal "new_getBandwidthImage"
  end

  it "message get_snapshot_capacity_gb" do
    subject.class.message_name("get_snapshot_capacity_gb").must_equal "getSnapshotCapacityGb"
  end

  it "message get_archive_disk_usage_rate_per_gb" do
    subject.class.message_name("get_archive_disk_usage_rate_per_gb").must_equal "getArchiveDiskUsageRatePerGb"
  end

  # SoftLayer Names
  it "to sl name Softlayer::Account" do
    subject.class.to_softlayer_name("Softlayer::Account").must_equal "SoftLayer_Account"
  end
end