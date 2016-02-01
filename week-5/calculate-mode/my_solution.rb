# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

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
  
  
  # array.each_with_object(Hash.new(0)) do |key, value|
  #   array[key] += 1
  # end
  
  my_hash = Hash.new(0)
  
  array.each {|num| my_hash[num] += 1 }
  
  
#   my_hash.max_by{ |key, value| value}
   my_hash.select! {|key, value| value ==  my_hash.values.max}  
  
# Convert max keys into aray
  
  return my_hash.keys
  
end


# 3. Refactored Solution




# 4. Reflection