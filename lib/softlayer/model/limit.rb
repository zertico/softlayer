module Softlayer
  class Model
    class Limit
      def initialize(limit, offset = 0)
        @limit = limit
        @offset = offset
      end

      def to_header
        {
          'resultLimit' => {
            'limit' => @limit,
            'offset' => @offset
          }
        }
      end
    end
  end
end
