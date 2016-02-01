# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#     while array.length < min_size  
      
#       array.push value
#     end
#   return array 
# end

    
# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array.dup
#   while new_array.length < min_size  
#       new_array.push value
#     end
#   return new_array
# end




# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
   
  return array.fill(value, array.length...min_size)
end

    
def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
   
  return new_array.fill(value, array.length...min_size)
end

# 4. Reflection