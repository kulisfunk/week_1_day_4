require ("minitest/autorun")
require ("minitest/rg")

require_relative("fizzbuzz.rb")

class FizzbuzzTest < MiniTest::Test

  def test_fizzbuzz_3_returns_fizz()

    #arrange
      expected = "Fizz"
    #act
      actual = fizzbuzz(3)
    #assert
      assert_equal(expected, actual)
  end

  def test_fizzbuzz_5_returns_buzz()

    #arrange
      expected = "Buzz"
    #act
      actual = fizzbuzz(5)
    #assert
      assert_equal(expected, actual)
  end

  def test_fizzbuzz_1_returns_1()

    #arrange
      expected = "1"
    #act
      actual = fizzbuzz(1)
    #assert
      assert_equal(expected, actual)
  end

  def test_fizzbuzz_15_returns_fizzbuzz()

    #arrange
      expected = "Fizzbuzz!"
    #act
      actual = fizzbuzz(15)
    #assert
      assert_equal(expected, actual)
  end

  def test_fizzbuzz_minus_3_returns_fizz()

    #arrange
      expected = "Fizz"
    #act
      actual = fizzbuzz(-3)
    #assert
      assert_equal(expected, actual)
  end

  def test_fizzbuzz_minus_1_returns_minus_1()

    #arrange
      expected = "-1"
    #act
      actual = fizzbuzz(-1)
    #assert
      assert_equal(expected, actual)
  end

  def test_fizzbuzz_zero_returns_fizzbuzz()

    #arrange
      expected = "Fizzbuzz!"
    #act
      actual = fizzbuzz(0)
    #assert
      assert_equal(expected, actual)
  end

end
