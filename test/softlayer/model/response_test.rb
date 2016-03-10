require 'test_helper'

describe Softlayer::Model::Response do
  describe "Softlayer::Brand.get_all_owned_accounts" do
    let(:brand_get_all_owned_accounts) {
      {
        :item=> [
          {
            :account_managed_resources_flag=>false,
            :account_status_id=>"1001",
            :address1=>"Address 1",
            :address2=>"Address 2",
            :allowed_pptp_vpn_quantity=>"2",
            :brand_id=>"11111",
            :city=>"City",
            :claimed_tax_exempt_tx_flag=>false,
            :company_name=>"Test Mock Example",
            :country=>"BR",
            :create_date=>"Wed, 06 Oct 2000 09:32:30 -0500",
            :email=>"user@mail.com",
            :first_name=>"Celso",
            :id=>"111111",
            :is_reseller=>"1",
            :last_name=>"Fernandes",
            :late_fee_protection_flag=>true,
            :modify_date=>"Mon, 14 Feb 2000 13:40:23 -0600",
            :office_phone=>"+1 (800) 111-1111",
            :postal_code=>"11111",
            :state=>"OT",
            :status_date=>nil,
            :brand=> {
              :catalog_id=>"14",
              :id=>"11111",
              :key_name=>"ZERTICO",
              :long_name=>"Zertico",
              :name=>"Zertico",
              :all_owned_accounts=>
              {
                :item=>[
                  {:@href=>"#ref1"},
                  {
                    :account_managed_resources_flag=>false,
                    :account_status_id=>"1001",
                    :address1=>"Address 1",
                    :address2=>"Address 2",
                    :allowed_pptp_vpn_quantity=>"2",
                    :brand_id=>"11111",
                    :city=>"City",
                    :claimed_tax_exempt_tx_flag=>false,
                    :company_name=>"Zertico",
                    :country=>"BR",
                    :create_date=>"Wed, 05 Mar 2000 13:23:04 -0600",
                    :email=>"user@mail.com",
                    :first_name=>"Celso",
                    :id=>"12345",
                    :is_reseller=>"1",
                    :last_name=>"Fernandes",
                    :late_fee_protection_flag=>nil,
                    :modify_date=>"Tue, 29 Apr 2000 15:22:55 -0500",
                    :office_phone=>"+1 (800) 111 1111",
                    :postal_code=>"11111",
                    :state=>"OT",
                    :status_date=>nil,
                    :brand=>{:@href=>"#ref2"},
                    :"@xsi:type"=>"ns1:SoftLayer_Account",
                    :@id=>"ref3"
                  },
                  {
                    :account_managed_resources_flag=>false,
                    :account_status_id=>"1002",
                    :address1=>"Address 1",
                    :allowed_pptp_vpn_quantity=>"1",
                    :brand_id=>"11111",
                    :city=>"Itajuba",
                    :claimed_tax_exempt_tx_flag=>false,
                    :company_name=>"Company 2",
                    :country=>"BR",
                    :create_date=>"Fri, 27 Jun 2000 12:43:54 -0500",
                    :email=>"user@mail.com",
                    :first_name=>"Celso",
                    :id=>"12346",
                    :is_reseller=>"1",
                    :last_name=>"Fernandes",
                    :late_fee_protection_flag=>nil,
                    :modify_date=>"Fri, 27 Jun 2000 12:43:55 -0500",
                    :office_phone=>"+1 (800) 111 1111",
                    :postal_code=>"11111",
                    :state=>"OT",
                    :status_date=>"Mon, 30 Jun 2000 15:49:56 -0500",
                    :brand=>{:@href=>"#ref2"},
                    :"@xsi:type"=>"ns1:SoftLayer_Account",
                    :@id=>"ref4"
                  }
                ],
                :"@soap_enc:array_type"=>"ns1:SoftLayer_Account[6]",
                :"@xsi:type"=>"ns1:SoftLayer_AccountArray"
              },
              :@id=>"ref2",
              :"@xsi:type"=>"ns1:SoftLayer_Brand"
            },
            :@id=>"ref1",
            :"@xsi:type"=>"ns1:SoftLayer_Account"
          },
          {:@href=>"#ref3"},
          {:@href=>"#ref4"}
        ],
        :"@soap_enc:array_type"=>"ns1:SoftLayer_Account[6]",
        :"@xsi:type"=>"ns1:SoftLayer_AccountArray"
      }
    }
    subject { Softlayer::Model::Response.new(brand_get_all_owned_accounts) }
    it "#process" do
      response = subject.process(Array[Softlayer::Account])
      response.must_be_kind_of Array
      response.size.must_equal 3
      response[0].must_be_kind_of Softlayer::Account
    end
  end

  describe "Softlayer::Account.get_all_owned_brands" do
    let(:account_get_all_owned_brands) {
      {
        :item=>{
          :catalog_id=>"14",
          :id=>"11111",
          :key_name=>"ZERTICO",
          :long_name=>"Zertico",
          :name=>"Zertico",
          :"@xsi:type"=>"ns1:SoftLayer_Brand"
        },
        :"@soap_enc:array_type"=>"ns1:SoftLayer_Brand[1]",
        :"@xsi:type"=>"ns1:SoftLayer_BrandArray"
       }
    }
    subject { Softlayer::Model::Response.new(account_get_all_owned_brands) }
    it "#process" do
      response = subject.process(Array[Softlayer::Brand])
      response.must_be_kind_of Array
      response.size.must_equal 1
      response[0].must_be_kind_of Softlayer::Brand
    end
  end

  describe "Softlayer::Dns::Domain.create_a_record" do
    let(:dns_domain_create_a_record) {
      {
        :id=>"1846064",
        :name=>"fooooo.com",
        :serial=>"2000102702",
        :update_date=>"Tue, 27 Oct 2000 13:53:49 -0500",
        :managed_resource_flag=>false,
        :"@xsi:type"=>"ns1:SoftLayer_Dns_Domain_Forward"
      }
    }
    subject { Softlayer::Model::Response.new(dns_domain_create_a_record) }
    it "#process" do
      response = subject.process(nil)
      response.must_be_kind_of Softlayer::Dns::Domain::Forward
      response.id.must_equal 1846064
    end
  end

  describe "Softlayer::Dns::Domain.create" do
    let(:dns_domain_create) {
      {
        :id=>"1846064",
        :name=>"fooooo.com",
        :serial=>"2000102702",
        :update_date=>"Tue, 27 Oct 2000 08:53:40 -0500",
        :account=>{
          :account_managed_resources_flag=>false,
          :account_status_id=>"1001",
          :address1=>"Address 1",
          :address2=>"Address 2",
          :allowed_pptp_vpn_quantity=>"2",
          :brand_id=>"11111",
          :city=>"City",
          :claimed_tax_exempt_tx_flag=>false,
          :company_name=>"Test Mock Example",
          :country=>"BR",
          :create_date=>"Wed, 06 Oct 2000 09:32:30 -0500",
          :email=>"user@mail.com",
          :first_name=>"Celso",
          :id=>"111111",
          :is_reseller=>"1",
          :last_name=>"Fernandes",
          :late_fee_protection_flag=>true,
          :modify_date=>"Mon, 14 Feb 2000 13:40:23 -0600",
          :office_phone=>"+1 (800) 111-1111",
          :postal_code=>"11111",
          :state=>"OT",
          :status_date=>nil,
          :account_links=>{
            :item=>{
              :account_id=>"111111",
              :create_date=>"Wed, 29 Apr 2000 02:03:51 -0500",
              :destination_account_alphanumeric_id=>"00150000012M7kqAAC",
              :destination_account_id=>nil,
              :id=>"22222",
              :service_provider_id=>"3",
              :service_provider=>{
                :description=>"SalesForce",
                :id=>"3",
                :key_name=>"SALESFORCE",
                :name=>"SalesForce.com",
                :"@xsi:type"=>"ns1:SoftLayer_Service_Provider"
              },
              :"@xsi:type"=>"ns1:SoftLayer_Account_Link"
            },
            :"@soap_enc:array_type"=>"ns1:SoftLayer_Account_Link[1]",
            :"@xsi:type"=>"ns1:SoftLayer_Account_LinkArray"
          },
          :attributes=>{
            :"@soap_enc:array_type"=>"ns1:SoftLayer_Account_Attribute[0]",
            :"@xsi:type"=>"ns1:SoftLayer_Account_AttributeArray"
          },
          :brand=>{
            :catalog_id=>"14",
            :id=>"21",
            :key_name=>"SOFTLAYER_EU",
            :long_name=>"SoftLayer Dutch Holdings B.V.",
            :name=>"SoftLayer EU",
            :"@xsi:type"=>"ns1:SoftLayer_Brand"
          },
          :"@xsi:type"=>"ns1:SoftLayer_Account"
        },
        :resource_records=>{
          :item=>[
            {
              :data=>"ns1.softlayer.com.",
              :domain_id=>"1846064",
              :expire=>"604800",
              :host=>"@",
              :id=>"58792973",
              :minimum=>"3600",
              :mx_priority=>nil,
              :refresh=>"3600",
              :responsible_person=>"root.fooooo.com.",
              :retry=>"300",
              :ttl=>"86400",
              :type=>"SOA",
              :domain=>{:@href=>"#ref1"},
              :"@xsi:type"=>"ns1:SoftLayer_Dns_Domain_ResourceRecord_SoaType"
            },
            {
              :data=>"ns1.softlayer.com.",
              :domain_id=>"1846064",
              :expire=>nil,
              :host=>"@",
              :id=>"58792974",
              :minimum=>nil,
              :mx_priority=>nil,
              :refresh=>nil,
              :retry=>nil,
              :ttl=>"86400",
              :type=>"NS",
              :domain=>{:@href=>"#ref1"},
              :"@xsi:type"=>"ns1:SoftLayer_Dns_Domain_ResourceRecord_NsType"
            },
            {
              :data=>"ns2.softlayer.com.",
              :domain_id=>"1846064",
              :expire=>nil,
              :host=>"@",
              :id=>"58792975",
              :minimum=>nil,
              :mx_priority=>nil,
              :refresh=>nil,
              :retry=>nil,
              :ttl=>"86400",
              :type=>"NS",
              :domain=>{:@href=>"#ref1"},
              :"@xsi:type"=>"ns1:SoftLayer_Dns_Domain_ResourceRecord_NsType"
            }
          ],
          :"@soap_enc:array_type"=>"ns1:SoftLayer_Dns_Domain_ResourceRecord[3]",
          :"@xsi:type"=>"ns1:SoftLayer_Dns_Domain_ResourceRecordArray"
        },
        :@id=>"ref1",
        :"@xsi:type"=>"ns1:SoftLayer_Dns_Domain_Forward"
      }
    }
    subject { Softlayer::Model::Response.new(dns_domain_create) }
    it "#process" do
      response = subject.process(nil)
      response.must_be_kind_of Softlayer::Dns::Domain::Forward
      response.id.must_equal 1846064
    end
  end
end
