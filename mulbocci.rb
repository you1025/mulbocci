class Mulbocci
  attr_reader :size, :initials

  def initialize(initials=[0, 1])
    raise "invalid size!" unless initials.size > 1

    @size = initials.size
    @initials = initials
  end

  def self.new_with_size(size=2)
    raise "invalid size!" unless size > 1

    self.new(Array.new(size-1, 0).push(1))
  end

  def at(index)
    raise "invalid index!" unless index > 0

    if index <= @size
      @initials[index-1]
    else
      arr = Marshal.load(Marshal.dump(@initials))
      ((@size+1)..index).each do
        sum = arr.reduce{|sum, value| sum += value}
        arr[0..(@size-2)] = arr[1..(@size-1)]
        arr[-1] = sum
      end
      arr.last
    end
  end
end
