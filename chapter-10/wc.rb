=begin
对异常的处理：
begin
  ...
rescue
  ...
end

begin
  ...
rescue => 引用异常对象的变量
  ...
end

begin
  ..
rescue => 引用异常的对象
  ..
ensure
  .. 不管是否发生异常都希望执行
end

可以省略掉begin，定义在类和方法中，这样的话就会对整个类和方法进行异常控制。
=end

ARGV.each do |file|
  begin
    input = File.open(file).read
    puts input
  rescue => ex
    print ex.message, "\n"
    sleep 3
    retry # 重新执行begin下面的内容
  ensure
    print "文件#{file}处理完成\n"
  end

end

p Integer("10") rescue 0
p Integer("a") rescue 1


# 指定异常类型，指定需要捕捉的异常
file1 = "Hello.txt"
begin
  io = File.open file1
rescue Errno::ENOENT, Errno::EACCES => ex
  io = File.open "data.txt"
  print "文件不存在", ex.message, "\n"
ensure
  print io.read
end

