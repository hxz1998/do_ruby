class C1
  def hello
    "Hello"
  end
end

class C2 < C1
  alias old_hello hello

  def hello
    "你好 #{old_hello}"
  end

  # undef hello # 删除已有的方法
end

obj = C2.new
p obj.old_hello
p obj.hello

