require "test/unit"
require "./fib"

class FibTest < Test::Unit::TestCase

  def setup
  end

  def test_at_1
    assert_equal(0, Fib.at(1))
  end

  def test_at_7
    assert_equal(8, Fib.at(7))
  end

  def test_at_10
    assert_equal(34, Fib.at(10))
  end

  def test_at_0
    assert_raise RuntimeError do
      Fib.at 0
    end
  end

  def test_at_negative
    assert_raise RuntimeError do
      Fib.at -1
    end
    assert_raise RuntimeError do
      Fib.at -10
    end
  end

  def test_at_integer
    assert_raise RuntimeError do
      Fib.at 1.5
    end
    assert_raise RuntimeError do
      Fib.at 10.1
    end
  end

  def test_at2_1
    assert_equal(0, Fib.at2(1))
  end

  def test_at2_7
    assert_equal(8, Fib.at2(7))
  end

  def test_at2_10
    assert_equal(Fib.at2(10), 34)
  end

  def test_at2_0
    assert_raise RuntimeError do
      Fib.at 0
    end
  end

  def test_at2_negative
    assert_raise RuntimeError do
      Fib.at2 -1
    end
    assert_raise RuntimeError do
      Fib.at2 -10
    end
  end

  def test_at2_not_integer
    assert_raise RuntimeError do
      Fib.at2 1.5
    end
    assert_raise RuntimeError do
      Fib.at2 10.1
    end
  end

  def teardown
  end
end
