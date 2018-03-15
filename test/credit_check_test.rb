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

end
