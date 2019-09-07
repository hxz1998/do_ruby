tags = ["A", "B", "C"]

tags.each do |tagname|
  case tagname
  when "P", "A"
    puts "#{tagname} has child"
  when "IMG", "BR"
    puts "#{tagname} no child"
  else
    puts "#{tagname} can not be used"
  end
end

array = ["a", 1, nil]

array.each do |item| 
  case item
  when String
    puts "这是一个字符串"
  when Numeric
    puts "这是一个数字"
  when nil
    puts "啥也不是，空的"
  else
    puts "不知道是个啥"
  end
end

str1 = "你好"
str2 = "你好"
p str1.equal?(str2)