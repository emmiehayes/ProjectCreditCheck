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


# new_card = "4929735477250543"
# card_1 = CreditCheck.new(new_card)












# print "Please enter your 16 digit credit card number:"
# card_number = gets.chomp.to_i
# card_number

# if card_number.length != 16
#  puts "Invalid card number."
# end
#
# p card_number

##PSEUDOCODE-------------------------------------------------------------------

#DONE card_number = gets.chomp.to_i will automatically convert the string input to integer form
#DONE simplify dramatic split, reverse, map method chain from yesterday by using newly discovered method .digits
## DONE need to def method to multiply the numbers with an odd index by 2, calling a method to a method
## DONE need to map over array. if number is > 9 subtract 9 from the number to return the same number that adding the two digits would return.
## DONE need to calculate the sum of the array (returning the sum as a new variable) call method on method object.
## DONE need to confirm that the sum of the array % 10 equals zero to check validity, no need for puts
