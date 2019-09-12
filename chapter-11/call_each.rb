def call_each(ary, &block)
  ary.each(&block)
end

call_each [1, 2, 3] do |item|
  p item
end

# 外部的变量可以被块内的程序共享，
# 块内的同名变量不可以影响到块外的变量。
x = 1
y = 1
array = [1, 2, 3]
array.each do |x|
  y = x
end

puts "x:#{x}, y:#{y} "