class HelloCount
  @@count = 0

  def HelloCount.count
    @@count
  end

  def initialize(name = "Ruby")
    @name = name
  end

  def hello()
    @@count += 1
    puts "Hello, world. I am #{@name}.#{@@count}\n"
  end
end

bob = HelloCount.new("bob")
alice = HelloCount.new("alice")
ruby = HelloCount.new

p HelloCount.count

bob.hello
alice.hello
ruby.hello

p HelloCount.count
