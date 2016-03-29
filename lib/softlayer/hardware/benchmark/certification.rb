module Softlayer
  class Hardware
    module Benchmark
      class Certification < Softlayer::Entity
        SERVICE = 'SoftLayer_Hardware_Benchmark_Certification'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :hardware_id
        attr_accessor :account
        attr_accessor :hardware

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_hardware
          request(:get_hardware, Softlayer::Hardware)
        end

        def get_object
          request(:get_object, Softlayer::Hardware::Benchmark::Certification)
        end

        def get_result_file
          request(:get_result_file, Softlayer::Base64Binary)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :hardware_id, type: Integer
        end
      end
    end
  end
end
