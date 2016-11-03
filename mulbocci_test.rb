require "test/unit"
require "./mulbocci"

class MulbocciTest < Test::Unit::TestCase
  def test_initialize_no_argument
    assert_equal(2, Mulbocci.new.size)
  end

  def test_initialize_invalid_argument
    assert_raise RuntimeError do
      Mulbocci.new_with_size(0)
    end
    assert_raise RuntimeError do
      Mulbocci.new_with_size(-1)
    end
  end
end

class FibonacciTest < Test::Unit::TestCase
  def setup
    @fib = Mulbocci.new_with_size 2
  end

  def test_at_0
    assert_raise RuntimeError do
      @fib.at(0)
    end
  end

  def test_at_negative
    assert_raise RuntimeError do
      @fib.at(-1)
    end
    assert_raise RuntimeError do
      @fib.at(-4)
    end
  end

  def test_at_not_integer
    assert_raise RuntimeError do
      @fib.at 1.5
    end
    assert_raise RuntimeError do
      @fib.at 10.1
    end
  end

  def test_at_first2
    assert_equal(0, @fib.at(1))
    assert_equal(1, @fib.at(2))
  end

  def test_at_gt2
    assert_equal(1,  @fib.at(3))
    assert_equal(2,  @fib.at(4))
    assert_equal(3,  @fib.at(5))
    assert_equal(5,  @fib.at(6))
    assert_equal(8,  @fib.at(7))
    assert_equal(13, @fib.at(8))
    assert_equal(21, @fib.at(9))
    assert_equal(34, @fib.at(10))
  end
end

class TribocciTest < Test::Unit::TestCase
  def setup
    @tri = Mulbocci.new_with_size(3)
  end

  def test_at_0
    assert_raise RuntimeError do
      @tri.at(0)
    end
  end

  def test_at_negative
    assert_raise RuntimeError do
      @tri.at(-1)
      @tri.at(-5)
    end
  end

  def test_at_not_integer
    assert_raise RuntimeError do
      @tri.at 1.5
      @tri.at 10.1
    end
  end

  def test_at_first3
    assert_equal(0, @tri.at(1))
    assert_equal(0, @tri.at(2))
    assert_equal(1, @tri.at(3))
  end

  def test_at_gt3
    assert_equal(1,  @tri.at(4))
    assert_equal(2,  @tri.at(5))
    assert_equal(4,  @tri.at(6))
    assert_equal(7,  @tri.at(7))
    assert_equal(13, @tri.at(8))
    assert_equal(24,  @tri.at(9))
    assert_equal(44,  @tri.at(10))
  end
end
