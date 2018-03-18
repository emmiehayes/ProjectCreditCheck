print "Please enter your 16 digit credit card number:"
# user_input= gets.chomp.to_i

class CreditCheck

  attr_reader :card

  def initialize(numbers)
    @card = numbers
  end

  def integer_to_reversed_array
    @card.digits
  end

  def double_every_other_element
    integer_to_reversed_array.map.with_index do |number, index|
    if index.odd?
      number * 2
    else
      number
    end
   end
  end

  def sum_numbers_over_nine
    double_every_other_element.map do |number|
    if number > 9
      number - 9
    else
      number
    end
   end
  end

  def sum_of_array
    sum_numbers_over_nine.sum
  end

  def validate_card_number
    if sum_of_array % 10 == 0
    "The number is valid!"
    else
    "The number is invalid."
    end
  end

end
