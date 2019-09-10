=begin
主动抛出异常
=end

class MyError < StandardError

end

MyError1 = Class.new(MyError)


def hello(name)
  case name
  when "Tom"
    raise "Tom!我不欢迎你！"
  when "Jim"
    raise MyError1, "Jim，你是谁》？"
  when "Alice"
    raise MyError
  end
  "#{name}, 你好呀"
end

begin
  p hello "Tom"
rescue StandardError => ex
  puts ex.message
end
begin
  p hello "Jim"
rescue MyError1
  puts $!.message, "1"
rescue MyError
  puts $!.message, "0"
end
p hello "Tim"