class Fib
  def self.at(n)
    raise "invalid index" unless n > 0

    if n == 1
      0
    elsif n == 2
      1
    else
      self.at(n-1) + self.at(n-2)
    end
  end

  def self.at2(n)
    raise "invalid index" unless n > 0

    arr = [0, 1]
    if n == 1
      arr[0]
    elsif n == 2
      arr[1]
    else
      (3..n).each do |i|
        arr = [arr[1], arr[0]+arr[1]]
      end
      arr[1]
    end
  end
end
