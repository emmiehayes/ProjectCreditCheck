require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_creditcheck_exists
    credit_check = CreditCheck.new(4929735477250543)
    assert_instance_of CreditCheck, credit_check
  end

  def test_card
    credit_check = CreditCheck.new(4929735477250543)
    assert_equal 4929735477250543, credit_check.card
  end

  def test_integer_to_reversed_array
    credit_check = CreditCheck.new(4929735477250543)
    result = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    assert_equal result, credit_check.integer_to_reversed_array
  end


  def test_double_every_other_element
    credit_check = CreditCheck.new(4929735477250543)
    result = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal result, credit_check.double_every_other_element
  end


  def test_sum_numbers_over_nine
    credit_check = CreditCheck.new(4929735477250543)
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal result, credit_check.sum_numbers_over_nine
  end


  def test_sum_of_array
    credit_check = CreditCheck.new(4929735477250543)
    assert_equal 80, credit_check.sum_of_array
  end


  def test_validate_card_number
    credit_check = CreditCheck.new(4929735477250543)
    assert_equal "The number is valid!", credit_check.validate_card_number
  end
end
