=begin
第二次学习Ruby，
学习内容为容器
=end
names = ["小林", "高岗"]
puts(names[0])
names[0] = "叶高"
puts(names)
print(names, "\n")


print(names.size, "\n")

names.each {|item| puts item}

puts :foo
puts :foo.to_s
puts "foo".to_sym

song = {
    :title => "Android",
    :artist => "Radio"
}

person = {
    name: "小明",
    age: 8
}

print(song, "\n")
print person, "\n"

person.each do |key, value|
  print key, ": ", value, "\n"
end


index = /Ruby/i =~ "RUby"
print index

