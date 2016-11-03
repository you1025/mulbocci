class Tri
  def self.at(n)
    raise "invalid index: argument must be a natural number" unless n > 0 && n.is_a?(Integer)
    
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
