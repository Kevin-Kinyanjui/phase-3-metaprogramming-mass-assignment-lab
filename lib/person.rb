class Person
  def initialize attr
    attr.each do |key, value|
      self.class.send(:attr_accessor, key)
      instance_variable_set "@#{key}", value
    end
  end
end
