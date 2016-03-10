module Softlayer
  class Notification
    module Occurrence
      class Resource < Softlayer::Model
        autoload :Hardware, 'softlayer/notification/occurrence/resource/hardware'
        autoload :Virtual, 'softlayer/notification/occurrence/resource/virtual'
        autoload :Network, 'softlayer/notification/occurrence/resource/network'
        attr_accessor :active
        attr_accessor :filter_label
        attr_accessor :notification_occurrence_event_id
        attr_accessor :resource_account_id
        attr_accessor :resource_name
        attr_accessor :resource_table_id
        attr_accessor :notification_occurrence_event
        attr_accessor :resource

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :active, type: Integer
          property :filter_label, type: String
          property :notification_occurrence_event_id, type: Integer
          property :resource_account_id, type: Integer
          property :resource_name, type: String
          property :resource_table_id, type: Integer
        end
      end
    end
  end
end
