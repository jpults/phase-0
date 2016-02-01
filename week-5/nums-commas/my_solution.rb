# Numbers to Commas Solo Challenge

# I spent [.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) A string that represents the integer, with commas seperating every three digits.
# What are the steps needed to solve the problem?

#Create a string set equal to the int as a string

#WHILE the integer divided by 1000 is larger than 1
#  insert a comma 3 spaces from the end of the string
#  Divide the integer by 1000


# return the string

# 1. Initial Solution

# def separate_comma(int)

#   string = int.to_s
  
#   while (int/1000)>1
#     string.insert(-4,",")
#     int = int/1000
    
#   end
  
#   return string
  
# end

# 2. Refactored Solution


def separate_comma(int)

  string = int.to_s
  counter = 1
  while (int/1000)>1
    string.insert(-4*counter,",")
    int = int/1000
    counter += 1
  end
  
  return string
  
end




# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider? I considered dividing the number out and making seperate strings, but then I realized you could probably insert commas at specific points.
# Was your pseudocode effective in helping you build a successful initial solution? For the most part.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how? I used the .insert method to put the comma's in at a specific place. The doc was a little confusing but after experimenting I figured it out.
# How did you initially iterate through the data structure? I only was dividing the number by 1000. 
# Do you feel your refactored solution is more readable than your initial solution? Why?  I added a counter to keep track of how far down I have to put the comma, but it makes it a little more confusing, as it is not clear why it is needed.