module Softlayer
  class Model
    module Operations
      def self.included(base)
        base.send(:attr_accessor, :headers)
      end

      def self.extended(klass)
        klass.define_singleton_method("headers=") { |headers| @headers = headers }
        klass.define_singleton_method("headers") { @headers }
      end

      def filter(filter)
        @filter = Filter.new(service_name, filter) if filter.is_a? Hash or filter.is_a? String
        @filter = filter if filter.is_a? Filter
        self
      end

      def limit(limit, offset = 0)
        @limit = Limit.new(limit, offset)
        self
      end

      def mask(mask)
        @mask = Mask.new(service_name, mask) if mask.is_a? Hash or mask.is_a? String
        @mask = mask if mask.is_a? Mask
        self
      end

      def request_headers
        headers = {}
        headers.merge!(@headers) if @headers
        @headers = nil
        %w(filter limit mask).each do |header|
          if instance_variable_get("@#{header}")
            headers.merge!(instance_variable_get("@#{header}").to_header)
            instance_variable_set("@#{header}", nil)
          end
        end
        headers
      end
    end
  end
end
