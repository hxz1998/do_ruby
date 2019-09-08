=begin
开始学习类的概念和用法
=end

p [].class
array = Array.new
p array.class
str = "E"
p str.class

p array.instance_of?(String)
p array.instance_of?(Array)
p str.is_a?(String)
p str.is_a?(Object)
p str.is_a?(BasicObject)
