class RingArray < Array
  def [](index)
    index = index % size
    super(index)
  end
end

wday = RingArray["周一", "周二", "周三", "周四", "周五", "周六", "周日"]
p wday[1]
p wday[8]
p wday[-1]
p RingArray.instance_methods