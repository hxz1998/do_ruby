class String
  def count_word
    ary = self.split(/\s+/)
    ary.size
  end
end

str = "ni hao a"
p str.count_word