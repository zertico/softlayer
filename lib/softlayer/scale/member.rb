module Softlayer
  module Scale
    class Member < Softlayer::Model
      SERVICE = 'SoftLayer_Scale_Member'
      autoload :Virtual, 'softlayer/scale/member/virtual'
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :scale_group_id
      attr_accessor :scale_group

      def delete_object
        request(:delete_object, Boolean)
      end

      def get_object
        request(:get_object, Softlayer::Scale::Member)
      end

      def get_scale_group
        request(:get_scale_group, Softlayer::Scale::Group)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :id, type: Integer
        property :scale_group_id, type: Integer
      end
    end
  end
end
