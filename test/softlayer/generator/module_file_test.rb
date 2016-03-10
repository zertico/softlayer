require 'test_helper'
require 'softlayer/generator/converter'

describe Softlayer::Generator::ModuleFile do
  let (:class_name) { 'SoftLayer_Account_Regional_Registry' }
  subject { Softlayer::Generator::ModuleFile.new(class_name) }

  context "McAffee" do
    it "generate class" do
      module_file = Softlayer::Generator::ModuleFile.new('McAfee_Epolicy_Orchestrator_Version36_Agent')
      module_file.generate.must_equal "module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Agent
            autoload :Details, 'softlayer/mc_afee/epolicy/orchestrator/version36/agent/details'
            autoload :Parent, 'softlayer/mc_afee/epolicy/orchestrator/version36/agent/parent'
          end
        end
      end
    end
  end
end
"
    end
  end

  context "SoftLayer with autoload" do
    it "generate class" do
      module_file = Softlayer::Generator::ModuleFile.new('SoftLayer_Account_Regional_Registry')
      module_file.generate.must_equal "module Softlayer
  class Account
    module Regional
      module Registry
        autoload :Detail, 'softlayer/account/regional/registry/detail'
      end
    end
  end
end
"
    end
  end

  it "raises if supplied softlayer is a class" do
    class_name = 'McAfee_Epolicy_Orchestrator_Version36_Agent_Details'
    Proc.new { Softlayer::Generator::ModuleFile.new(class_name) }.must_raise Softlayer::Generator::ModuleFile::Exception
  end
end
