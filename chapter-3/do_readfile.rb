=begin
读取文件操作
=end

filename = ARGV[0]
file = File.open(filename)

text = file.read
print text

file.close


text = File.read(filename)
puts text, "\n"

file = File.open(filename)
file.each_line do |line|
  print line, '--'
end

file.close

puts

pattern = Regexp.new(ARGV[1])
file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    print line, "匹配了\n"
  else
    print "不匹配"
  end
end
