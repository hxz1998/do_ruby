=begin
重要！
常用的文件操作方法：
File.open(filename) do |file|
  ...
end
=end
begin
  File.open("hello.txt") do |file|
    file.each_line do |line|
      puts line
    end
  end
rescue Errno::NOERROR => e
  print e.message "\n"
ensure
  print "文件处理完毕"
end

# 使用块来替换一些工具库的算法
array = ["Java", "C", "C++", "PHP", "Ruby"]
sorted = array.sort
p sorted

sorted = array.sort do |a, b|
  a.length <=> b.length
end
p sorted

# #w()是一种用于生成以各种单词为元素的数组字面量
array = %w(
Ruby is a open source programming language with a focus on simplicity and productivity.
It has an elegant syntax that is natural to read and easy to write.
)

call_num = 0
sorted = array.sort do |a, b|
  call_num += 1
  a.length <=> b.length
end

sorted2 = array.sort_by do |item|
  item.length
end

puts "排序结果：\n", array
puts "数组的元素数量 #{array.length}"
puts "调用次数：#{call_num}"


