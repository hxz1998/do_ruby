=begin
类名大写
initialize初始化方法
@ 成员变量（实例变量）
attr_accessor 变量
=end
class HelloClass
  # attr_accessor(:age)
  attr_accessor :age, :score

  def initialize(myname = "Ruby")
    @name = myname
    @age = 0
    @score = 0
  end

  def hello
    puts "Hello, world. I am #{@name}"
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end

  def greet
    # puts "Hi, I am #{self.name}"
    puts "Hi, I am #{name}"
  end

  class << self
    def hello(name)
      print "#{name} said hello"
    end
  end

  def self.hello2(name)
    print "#{name} said hello2"
  end
end


bob = HelloClass.new("Bob")
alice = HelloClass.new("alice")
bob.hello
alice.hello

p bob.name
p bob.age
bob.age = 1; p bob.age
bob.greet


=begin
类方法的几种定义方式


class => HelloWorld
  def hello(name)
  end
end

class HelloWorld
  class << self
    def hello(name)
    end
  end
end

class HelloWorld
  def self.hello(name)
  end
end

def HelloWorld.hello(name)
end
=end
HelloClass.hello("小明")
HelloClass.hello2("小刚")