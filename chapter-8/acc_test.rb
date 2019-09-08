class AccTest
  # 这样定义的话，下面的会覆盖上面的
  # public
  # private
  def pub
    puts "这是一个公有方法"
  end

  public :pub

  def priv
    puts "这是一个私有方法"
  end

  private :priv
end

acc = AccTest.new

acc.pub

acc.priv