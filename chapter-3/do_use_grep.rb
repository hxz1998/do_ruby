require_relative 'grep'
require "date"


pattern = Regexp.new("你好")
filename = "data.txt"
simple_grep(pattern, filename)

date = Date.today
puts date
