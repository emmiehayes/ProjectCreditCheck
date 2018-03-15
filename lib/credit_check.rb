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









end
#
#
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
#DONE user enters card numbers
#DONE card_number = gets.chomp will automatically return a string of the numbers entered
#DONE card_number.reverse will reverse the order of the numbers so that i don't have to think right to left, personal peference, not necessary though
#DONE card_number.split("") allows me to convert the string to an array by splitting the single string of numbers into 16 separate string elements
#DONE card_number.map do |number| .to_i changes my string elements to integer elements in the array
##DONE need to make sure the card number entered is the correct length, if not it needs to tell the card holder they have entered an invalid number


## ONCE CARD NUMBER STORED
## need to def method to multiply the numbers with an odd index by 2
## need to .find_all numbers that are > 9, inject a plus sign in between the two digits to calculate the sum of the element, outcome will equal single digit
## need to calculate the sum of the array (returning the sum as a new variable)
## need to confirm that the sum of the array % 10 equals zero to check validity

# OUTPUT
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
