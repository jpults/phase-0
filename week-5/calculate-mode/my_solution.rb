# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Ben Heidebrink]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of values
# What is the output? (i.e. What should the code return?)
# Most common value
# What are the steps needed to solve the problem?

# Convert array into hash, making each array object a key
# For each value in array, add 1 to it's hash value

#.each_with_object(Hash.new(0)) do |item, list|
   # array[item] += 1

# Return hash key with highest value

# hash.max{ |a, b| b}

# 1. Initial Solution

def mode (array)
  
  
  
  
  my_hash = Hash.new(0)
  
  array.each {|num| my_hash[num] += 1 }
  
  
  max = my_hash.values.max
#   my_hash.max_by{ |key, value| value}
   my_hash.select! {|key, value| value ==  max}  
  
# Convert max keys into aray
  
  return my_hash.keys
  
end


# 3. Refactored Solution




# 4. Reflection

# Which data structure did you and your pair decide to implement and why? A hash because we could track the occurance of each element with the element being the key and the value being the number of times.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?  No this was a bit trickier. Trying to seperate all the hash values with the highest number among them.
# What issues/successes did you run into when translating your pseudocode to code? 
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? We used .each and select. We ran into issues with select as it would work on my partners computer but not mine. We never figured out the problem but found a work around.