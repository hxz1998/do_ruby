class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def inspect
    "(#{x}, #{y})"
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def +@
    dup
  end

  def -@
    self.class.new(-x, -y)
  end

  def ~@
    self.class.new(-y, x)
  end

  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range"
    end
  end

  def []=(index, value)
    case index
    when 0
      self.x = value
    when 1
      @y = value
    else
      raise ArgumentError, "Out of range"
    end
  end
end

p0 = Point.new(0.1, 0.2)
p1 = Point.new(0.3, 0.6)
p p0
p p1
p p1 - p0
p p1 + p0
p2 = Point.new(3, 6)
p ~p2

p p2[0]
p p2[1] = 2
p p2
p p2[1]