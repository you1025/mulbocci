require "test/unit"
require "./tri"

class TriTest < Test::Unit::TestCase
  def setup
    @tri = Tri.new
  end

  def test_at_1
    assert_equal(0, @tri.at(1))
  end

  def test_at_2
    assert_equal(0, @tri.at(2))
  end

  def test_at_3
    assert_equal(1, @tri.at(3))
  end

  def test_at_4
    assert_equal(1, @tri.at(4))
  end

  def test_at_5
    assert_equal(2, @tri.at(5))
  end

  def test_at_6
    assert_equal(4, @tri.at(6))
  end

  def test_at_7
    assert_equal(7, @tri.at(7))
  end

  def test_at_8
    assert_equal(13, @tri.at(8))
  end

  def test_at_9
    assert_equal(24, @tri.at(9))
  end

  def test_at_10
    assert_equal(44, @tri.at(10))
  end

  def test_at_0
    assert_raise RuntimeError do
      @tri.at(0)
    end
  end

  def test_at_negative
    assert_raise RuntimeError do
      @tri.at(-1)
    end
    assert_raise RuntimeError do
      @tri.at(-99)
    end
  end

  def teardown
  end
end
