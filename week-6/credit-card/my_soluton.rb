# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Jack Hamilton].
# I spent [#1] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number (integer)
# Output: :true or :false
# Steps:

# * Create a class Credit Card

#   * On creation
#   * return error if not 16 digits
  
#   * Create a new method called check_card
#   * Copy the digits into a container of individual digits called "digits".
#   * Traverse the digits and if index is odd then double it 
#   * Save value as a string.
#   * Split the string into individual characters.
#   * create a temporary variable to hold "current_sum" (initialized to 0)
#   * Convert each character back to an integer and add to "current_sum"
#   * Swap the current index element value with "current_sum"
#   * create a new variable "running_total"
#   * Traverse the "digits" container and add to "running_total"
#   * return true if "running_total" % 10 == 0 else false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   @card_no = 0
  
#   def initialize(number)
#     if number.to_s.length != 16
#       raise ArgumentError, "The number of digits must be 16"
#     end
#     @card_no = number
  
    
#   end
  
#   def check_card 
    
#     digits = @card_no.to_s.split(//)
    
#     sum = 0
    
#     digits.each.with_index do |element,index|
      
#       if index % 2 != 0
#         sum += element.to_i
        
#         else
        
#         temp = (2*element.to_i).to_s.split(//)
        
#         temp.each { |a| sum += a.to_i }
#         print temp
#         puts " "
#       end
      
#     end
#     puts sum
#     return sum % 10 == 0
#   end
  
# end

# Refactored Solution


class CreditCard
  
  @card_no = 0
  
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError, "The number of digits must be 16"
    end
    @card_no = number
  end
  
  def check_card 
    
    digits = @card_no.to_s.split(//)
    
   
    
    # digits.each.with_index do |element,index|
      
    sum = digits.select.with_index{|x,i| i.to_i.odd?}.map{|x| x.to_i}.reduce(:+)

    sum += digits.select.with_index{|x,i| i.to_i.even?}.map{|x| (2*x.to_i).to_s.split(//).map{|s| s.to_i}.reduce(:+) }.reduce(:+)
    
     puts sum
     return sum % 10 == 0
  end
  
end





our_card = CreditCard.new(4563960122001999)

puts our_card.check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?
#   The data structures and making sure different parts were strings or integers at the right time.
  
# What new methods did you find to help you when you refactored?
#   We used reduce to add up all the numbers in an array. We used .even? to see if a number was even for the index of the array. 
  
# What concepts or learnings were you able to solidify in this challenge?
#   As it keeps being repeated to us, just because it is on one line does not mean it is better. If you look at our line 100, it is a cool line and it works perfectly, 
#   but in a week it will take me 10 minutes to remember what exactly is happening there.