module Softlayer
  module Container
    class Graph < Softlayer::Model
      autoload :Option, 'softlayer/container/graph/option'
      autoload :Plot, 'softlayer/container/graph/plot'
      attr_accessor :base_unit
      attr_accessor :end_datetime
      attr_accessor :height
      attr_accessor :image
      attr_accessor :interval
      attr_accessor :metrics
      attr_accessor :normalize_flag
      attr_accessor :options
      attr_accessor :plots
      attr_accessor :return_image
      attr_accessor :start_datetime
      attr_accessor :template
      attr_accessor :title
      attr_accessor :width

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :base_unit, type: String
        property :end_datetime, type: String
        property :height, type: Integer
        property :interval, type: Integer
        property :return_image, type: Boolean
        property :start_datetime, type: String
        property :template, type: String
        property :title, type: String
        property :width, type: Integer
      end
    end
  end
end
