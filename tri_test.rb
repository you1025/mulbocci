require "test/unit"
require "./tri"

class TriTest < Test::Unit::TestCase
  def setup
  end

  def test_at_1
    assert_equal(0, Tri.at(1))
  end

  def test_at_2
    assert_equal(0, Tri.at(2))
  end

  def test_at_3
    assert_equal(1, Tri.at(3))
  end

  def test_at_4
    assert_equal(1, Tri.at(4))
  end

  def test_at_5
    assert_equal(2, Tri.at(5))
  end

  def test_at_6
    assert_equal(4, Tri.at(6))
  end

  def test_at_7
    assert_equal(7, Tri.at(7))
  end

  def test_at_8
    assert_equal(13, Tri.at(8))
  end

  def test_at_9
    assert_equal(24, Tri.at(9))
  end

  def test_at_10
    assert_equal(44, Tri.at(10))
  end

  def test_at_0
    assert_raise RuntimeError do
      Tri.at(0)
    end
  end

  def test_at_negative
    assert_raise RuntimeError do
      Tri.at(-1)
    end
    assert_raise RuntimeError do
      Tri.at(-99)
    end
  end

  def teardown
  end
end
