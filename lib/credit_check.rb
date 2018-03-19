print "Please enter your 16 digit credit card number:"
# user_input= gets.chomp.to_i

class CreditCheck

  attr_reader :card

  def initialize(numbers)
    @card = numbers
  end

  def int_to_reverse_array
    @card.digits
  end

  def dbl_every_other_element(master)
    master.map.with_index do |number, index|
    if index.odd?
      number * 2
    else
      number
    end
   end
  end

  def calculate_numbers_over_nine(master)
    master.map do |number|
    if number > 9
      number - 9
    else
      number
    end
   end
  end

  def sum_of_array(master)
    master.sum
  end

  def validate_card_number(master)
    if master % 10 == 0
    "The number is valid!"
    else
    "The number is invalid."
    end
  end

end
