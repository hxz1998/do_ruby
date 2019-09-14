p Random.rand

p Random.rand(100)
p Random.rand(100)

r1 = Random.new(1)
p r1.rand
p r1.rand

r2 = Random.new(1)
p r2.rand
p r2.rand

require 'securerandom'
p SecureRandom.random_bytes(12)

# 计数，计数有四种基本写法
# n.times   from.upto(to)   from.downto(to)    from.step(to, step)
2.times do |i|
  p i
end

1.upto(12) do |item|
  p item
end

12.downto(-2) do |i|
  p i
end

12.step(-2, -2) do |i|
  p i
end

# 对于Comparable模块而言，将其Mix-in到类之后，可以实现将类的实例进行比较的功能。
