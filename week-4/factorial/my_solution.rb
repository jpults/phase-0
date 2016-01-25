# Factorial

# I worked on this challenge [by myself, with: John Pults ].

#Pseudocode
#
#Creating Method factorial
#Taking input: number as an attribute
#Run a loop from number to 1
#collect each item inside the loop
#add it up to a variable
#return the result



# Your Solution Below
def factorial(number)
  result = 1
  if number == 0 || number == 1
    return 1
  else
    idx = number
    while idx > 0
      result *= idx
      idx -= 1
    end
    result
  end
end