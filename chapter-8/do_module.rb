=begin
模块的几种用法
多继承
提供命名空间

方法查找的规则
首先是原类中查找
包含多个模块时，使用最后一个包含的

嵌套include时，线性查找，深度优先

相同模块包含两次以上时，第二次以后的会被省略

=end

module MyModel
  VERSION = 1.0
  def hello(name)
    "hello, #{name}"
  end

  def hello_2
    p "Hello"
  end

  module_function :hello_2
end

class MyClass1
  include MyModel
end

class MyClass2
  include MyModel
end

c1 = MyClass1.new
p c1.hello "Alice"
p MyClass2.new.hello "Bob"
p MyModel::VERSION
MyModel.hello_2
include MyModel
p VERSION
hello_2

module M1

end

module M2

end

module M3
  include M2
end

class C
  include M1
  include M3
end

p C.ancestors

# extend 方法
module Edition
  def edition(n)
    "#{self} 第 #{n} 版"
  end
end

str = "Ruby基础教程"
str.extend Edition
puts str.edition 1