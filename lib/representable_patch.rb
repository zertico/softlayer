module Representable
  module ClassInclusions
    def inherited(subclass)
      super
      unless self == Representable::Decorator
        subclass.instance_variable_set(:'@representable_attrs', self.representable_attrs.dup)
      end
    end
  end
end