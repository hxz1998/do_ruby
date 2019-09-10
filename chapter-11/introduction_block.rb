=begin
对象.方法名 （参数列表） do |块变量|
end
=end
[1, 2, 3, 4, 5].each do |i|
  puts i ** 2
end

[1, 2, 3, 4].each_with_index do |value, index|
  puts "#{index} : #{value}"
end

outcome = {
    "参加消费" => 1000,
    "挂件费用": 500,
    :联欢会费用 => 600
}

sum = 0
outcome.each do |pair|
  sum += pair[1]
end
puts "消费总的合计为：#{sum}"




