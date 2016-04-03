module Softlayer
  class Model
    class Filter
      def initialize(service_name, filter)
        @service_name = service_name
        @filter = filter
      end

      def to_header
        {
          "tns:#{@service_name}ObjectFilter" => @filter.to_softlayer_filter
        }
      end
    end
  end
end
