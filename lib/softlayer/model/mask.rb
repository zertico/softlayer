module Softlayer
  class Model
    class Mask
      def initialize(service_name, mask)
        @service_name = service_name
        @mask = mask
      end

      def to_header
        {
          "#{@service_name}ObjectMask" => {
            'mask' => @mask
          }
        }
      end
    end
  end
end
