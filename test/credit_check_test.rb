require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def setup
    @credit_check = CreditCheck.new(4929735477250543)
  end

  def test_creditcheck_exists
    assert_instance_of CreditCheck, @credit_check
  end

  def test_card
    assert_equal 4929735477250543, @credit_check.card
  end

  def test_int_to_reverse_array
    result = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    assert_equal result, @credit_check.int_to_reverse_array
  end

  def test_dbl_every_other_element
    result = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal result, @credit_check.dbl_every_other_element(@credit_check.int_to_reverse_array)
  end

  def test_calculate_numbers_over_nine
    numbers = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal result, @credit_check.calculate_numbers_over_nine(numbers)
  end

  def test_sum_of_array
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal 80, @credit_check.sum_of_array(result)
  end

  def test_validate_card_number_valid
    final = 80
    assert_equal "The number is valid!", @credit_check.validate_card_number(final)
  end

  def test_validate_card_number_invalid
    credit_check = CreditCheck.new(5541801923795240)
    final = 65
    assert_equal "The number is invalid.", credit_check.validate_card_number(final)
  end

  def test_validate_amex_valid
    credit_check = CreditCheck.new(342804633855673)
    final = 70
      assert_equal "The number is valid!", credit_check.validate_card_number(final)
  end

  def test_validate_amex_invalid
    credit_check = CreditCheck.new(342801633855673)
    final = 64
      assert_equal "The number is invalid.", credit_check.validate_card_number(final)
  end
end
