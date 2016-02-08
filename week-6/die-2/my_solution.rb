# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A class that can tell me how many sides there are and give me a random one
# Steps: 
# Declare Die Class

# # Die.new {
# # Sides Class Variable = Input Arrays 
#   if this is empty, create an error
# }

# Die.sides {  return size of Sides }

# Die.roll { return a random element in sides between 0 and size of Sides }

# end


# Initial Solution

class Die
  
  @sides = []
  def initialize(labels)
    
    if labels.empty? 
      raise ArgumentError.new("An empty array is not a valid input")
    end
    @sides = labels
    
  end

  def sides
    return @sides.length
  end

  def roll
    
    random = rand(@sides.length) - 1
    
    return @sides[random]
    
  end
end

puts Die.new(["Pizza", "Sushi", "Tacos", "Burgers"]).roll





# Refactored Solution








# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work? The only thing that needed to be different was that I had to return the element number
# in the array of the random number generated ( -1 because arrays start at 0) instead of just the number.

# What does this exercise teach you about making code that is easily changeable or modifiable? Well it might have saved some time if I looked at the previous die class ha. If I had and my code was easily changeable and easy to read, I could have saved a lot of time typing.

# What new methods did you learn when working on this challenge, if any?  I did not learn any more but I became more familiar with the rand method.

# What concepts about classes were you able to solidify in this challenge? I must remember that class variables start with an @.  The initalization function is just called initialize, but it is called as .new