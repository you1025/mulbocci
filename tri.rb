class Tri
  def self.at(n)
    raise "invalid index" unless n > 0
    
    arr = [0, 0, 1]
    if n < 4
      arr[n-1]
    else
      (4..n).each do
        arr = [arr[1], arr[2], arr[0]+arr[1]+arr[2]]
      end
      arr.last
    end
  end
end
