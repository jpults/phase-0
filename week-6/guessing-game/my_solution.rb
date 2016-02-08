# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An answer for the game
# Output: A key whether the guess is higher or lower
# Steps:

# Define an answer and last guess variable in the class
  
#   .guess input guess= {
#     if the guess is equal to answer return correct, other wise return high or low accordingly
#       set last guess to the guess
#     }
    
#     .solved? {returns true if the last guess is equal to the answer}


# Initial Solution

class GuessingGame
  def initialize(answer)
   @answer = answer
    
  end

  @last_guess = nil
  
  def guess(guess)
    @last_guess = guess
    if guess == @answer
      return :correct
      elsif guess > @answer
        return :high
      elsif guess < @answer
        return :low
    end
    
  end
    
  
  def solved?
    puts @last_guess
    return @last_guess == @answer
  end
  
end










# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?  
#   You could create a new object, say a ball, in real life, and it would have variables that were its size, color, weight, etc. The methods would be things you could do with the ball, perhaps painting it, inflating it, throwing it.
      
# When should you use instance variables? What do they do for you?
#   When you want to have a property that can be different between different versions of an object. They can change up how your methods work or store data about different real world objects.
    
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#   Flow should be used to direct what your program does depending on what it is given.  I had trouble getting a case statement to work when I wanted to compare the case to another thing. I'm still looking for the answer on that one.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#   I think it is to signify that the return will be used in something else. Perhaps there is a test and the program gives a point every time a :correct symbol is passed. 