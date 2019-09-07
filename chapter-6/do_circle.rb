=begin
循环的几种实现方式
times 明确了要循环多少次
while 希望可以自由指定何时结束循环
each 从对象中取出元素
for 从对象中取出元素
until while变得不好用的时候用
loop 不限制循环次数
=end

7.times do
  puts "满地油菜花"
end

5.times do |time|
  puts "#{time}油菜满地花"
end

sum = 0
for i in 1..5
  sum = sum + i
end

p sum

names = ["awk", "perl", "python"]
for name in names
  p name
end


i = 1
while i < 3
  p i
  i = i + 1
end

names.each do |name|
  p name
end

# loop do
#   p "Ruby"
# end
#
puts "\n"

i = 0
["Ruby", "java", "C", "C++"].each do |item|
  i = i + 1
  if i == 3
    break
  end
  p item
end

puts "\n"
i = 0
["Ruby", "java", "C", "C++"].each do |item|
  i = i + 1
  if i == 2
    next
  end
  p item
end