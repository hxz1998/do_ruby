=begin
玩一下math模块、numeric数值模块，还有位运算
=end

include Math

p PI

p 10.to_f
p "1.3".to_i
p "1.3".to_f


def pd(i)
  printf "%08b\n", i & 0b11111111
end

b = 0b11110000
pd(b)
pd(~b)
pd(b & 0b00010001)
pd(b | 0b11101111)
pd(b << 2)

