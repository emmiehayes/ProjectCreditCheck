require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def setup
    @cc_check = CreditCheck.new(4929735477250543)
  end

  def test_creditcheck_exists
    assert_instance_of CreditCheck, @cc_check
  end

  def test_card
    assert_equal 4929735477250543, @cc_check.card
  end

  def test_int_to_reverse_arr
    result = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    assert_equal result, @cc_check.int_to_reverse_arr
  end

  def test_dbl_every_other
    result = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal result, @cc_check.dbl_every_other(@cc_check.int_to_reverse_arr)  #76 characters
  end

  def test_calculate_numbers_over_nine
    numbers = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal result, @cc_check.calculate_numbers_over_nine(numbers)
  end

  def test_sum_of_arr
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal 80, @cc_check.sum_of_arr(result)
  end

  def test_validate_card_valid
    final = 80
    assert_equal "The number is valid!", @cc_check.validate_card(final)
  end

  def test_validate_card_invalid
    cc_check = CreditCheck.new(5541801923795240)
    final = 65
    assert_equal "The number is invalid.", cc_check.validate_card(final)
  end

  def test_validate_amex_valid
    cc_check = CreditCheck.new(342804633855673)
    final = 70
      assert_equal "The number is valid!", cc_check.validate_card(final)
  end

  def test_validate_amex_invalid
    cc_check = CreditCheck.new(342801633855673)
    final = 64
      assert_equal "The number is invalid.", cc_check.validate_card(final)
  end
end
