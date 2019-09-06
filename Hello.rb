=begin
长长的注释，看的是《Ruby基础教程（第五版）》示例程序
2019年9月6日创建
=end
# frozen_string_literal: true

# 基本输出
puts 'hello', 'World'
p(100)
p('100')
p("100")
p("\nnihao\t")


# 四则运算+-*/都一样
print(Math.cos(3.14))

# 变量
x = 2
y = 3
print "\nx+y=", x+y, "\n"

area = x * y
puts "表面积=#{area}"

# 条件判断，可以省略then
if x == 2 then
  puts "你好呀，x=2"
else
  puts "x!=2"
end

# 循环
i = 1
while i <= 10
  print i, "\n"
  i += 1
end

10.times do
  print "nihao"
end