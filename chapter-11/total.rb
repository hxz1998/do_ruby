def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield num
    else
      result += num
    end
  end
  result
end

p total 1, 10
p total(1, 10) { |num| num ** 2 }

n = total(1, 10) do |num|
  if num == 5
    # break 0
    break
  end
  num
end
p n

n = total(1, 5) do |num|
  if num >= 3
    next 0
  end
  num
end

p n


hello = Proc.new do |name|
  puts "Hello, #{name}"
end

hello.call "xiaoming"
