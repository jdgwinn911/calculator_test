require "minitest/autorun"
require_relative "calculator.rb"

class TestTddCalc < Minitest::Test
    def test_assert_1_equals_1
        assert_equal(1, 1)
    end

    def test_one_plus_one_is_two
        assert_equal(2, add_num(1, 1))
    end

    def test_assert_that_add_func_adds
        assert_equal(3, add_num(1, 2))
        assert_equal(7, add_num(3, 4))
    end

    def test_that_subtract_func_subtracts
        assert_equal(0, sub_num(2, 2))
        assert_equal(3, sub_num(10, 7))
    end

    def test_that_multiply_func_multiplies
        assert_equal(6, mult_num(3, 2))
        assert_equal(15, mult_num(5, 3))
    end

    def test_that_divide_finc_divides
        assert_equal(3, divide_num(15, 5))
        assert_equal(2, divide_num(10, 5))
    end

    def test_that_input_is_integer
        assert_equal(false, add_num(3, "3"))
        assert_equal(false, sub_num(3, "3"))
        assert_equal(false, mult_num(3, "3"))
        assert_equal(false, divide_num(3, "3"))
    end
end
