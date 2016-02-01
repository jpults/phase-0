# Pad an Array

# I worked on this challenge [by myself, with: Kyle Rombach]

# I spent [.75] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, a size int, and an optional value.
# What is the output? (i.e. What should the code return?) An array with the new size filled in with the value in the added elements.
# What are the steps needed to solve the problem?

# WHILE array length is less than the desired size
# push the value or nil onto the array

# return the array

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

# Were you successful in breaking the problem down into small steps? Yes , we did not have to change much for our code. 
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?  Yes it was pretty straigtforward. We got it the first time around.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?  It was successful because we thought out the problem correctly and made sure our syntax was correct.
# When you refactored, did you find any existing methods in Ruby to clean up your code?  Yes, .fill did the job for us without having to use a loop.
# How readable is your solution? Did you and your pair choose descriptive variable names?  I think it is quite readable and we did well.
# What is the difference between destructive and non-destructive methods in your own words?  Destructive methods destroy the original argument, replacing or modifying its content You do not necessarily need to grab the returned value.  Non-destructive methods merely return a copy or something different and cannot touch the data outside the method. 