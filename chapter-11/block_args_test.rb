def block_args_test
  yield()
  yield(1)
  yield(1, 2, 3)
end

puts "使用 num 来接收参数"
block_args_test do |num|
  p [num]
end

block_args_test do |a, b, c|
  p [a, b, c]
end

block_args_test do |*a|
  p [a]
end
