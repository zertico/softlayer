module Softlayer
  class Mock
    class Dns
      class Domain
        class ResourceRecord
          class SoaType < Softlayer::Mock
            def self.create_object(attrs=nil)
              resource_record = add_attributes(attrs)
              key = resource_record.responsible_person.split(".")[1]
              save_on_database(key, resource_record)
            end
          end
        end
      end
    end
  end
end
