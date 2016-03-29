module Softlayer
  class Model
    class Filter
      def initialize(service_name, filter)
        @service_name = service_name
        @filter = filter
      end

      def to_header
        {
          "#{@service_name}ObjectFilter" => @filter
        }
      end
    end
  end
end
