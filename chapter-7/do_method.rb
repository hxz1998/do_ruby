=begin
方法有几类：实例方法， 类方法， 函数式方法
=end
puts "10, 20, 30, 40, 50".split ','
p [1, 2, 3, 4].index 2

# 函数返回语句，可以省略return
def volume(x, y, z)
  x * y * z # 可以省略return
end

def max(a, b)
  if a > b
    a
  else
    b
  end
end

p volume(1, 2, 3)
p max(3, 9)

# 定义带块的方法
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 10
  num *= 2
end

# 参数个数不确定的方法
def foo(*args)
  args
end

p foo(1, 2, 3)
p foo

def meth(arg, *args)
  [arg, args]
end

p meth 1, 2, 3

def meth2(arg1, arg2, *args)
  [arg1, arg2, args]
end

p meth2 1, 2, 3, 4

# 关键字参数方法
def area2(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2
end

p area2(x: 2, y: 3, z: 4)
p area2(z: 2, y: 3, x: 4)

def meth3(x: 0, y: 1, **args)
  [x, y, args]
end

p meth3(x: 1, y: 2, time: 3, age: 4)

arg1 = {
    :x => 2,
    :y => 3,
    z:4
}
p area2(arg1)

def foo2(x, y, z)
  x + y + z
end
arg2 = [1, 2, 3]
p foo2(*arg2)
