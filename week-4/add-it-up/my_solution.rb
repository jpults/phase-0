# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Sepand Assadi].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: The total of the numbers
# Steps to solve the problem.

#set total to 0

#loop through array 

#add current index each time

#return total




# 1. total initial solution

def total(arr)
  total = 0
  
  arr.each  do |num|
    total += num 
  end
  
  
  
end

# 3. total refactored solution
def total(arr)
  arr.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: Sentence
# Steps to solve the problem.

#join the array into a single string
#capitalize the first letter
#add a . to the string

# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution
def sentence_maker(arr)
  sentence = arr.join(" ")
  sentence.capitalize!
  sentence += "."
  sentence
end