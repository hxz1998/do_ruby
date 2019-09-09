module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "Instance methods"
  end
end

class MyClass
  # 使用extend来定义类方法
  extend ClassMethods
  # 使用include来定义实例方法
  include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.imethod
