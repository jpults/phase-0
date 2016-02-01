#Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# #
# #


# Person 5
def my_array_splitting_method(array)
   #Declare new arrays for both strings and numbers, by selecting only the data type we want from the input array
  strings = array.select { |num| num.instance_of? String}
  numbers = array.select { |num| num.instance_of? Fixnum}
 
  
   #Create a final array that is the combination of both 
  final = []
  return final.push(numbers,strings) 
end



def my_hash_splitting_method(source, age)
  
  #Create two arrays which are first a hash of only pets of the desired age, which is converted to an array of length two arrays with .to_a
  
  younger = source.select { |key,value| value <= age}.to_a
  older = source.select { |key,value| value > age}.to_a
  
  final = []
  #Create a final array that the other two are pushed into
  return final.push(younger,older)
   
end



# Identify and describe the Ruby method(s) you implemented.
# .select = Will return a new array or hash depending on what you started with, with only values that return true for whatever code you put in the block
#   .select { |key,value| value = 5}  for example will return a hash with only the pairs which had a value of 5

# .instance_of? = returns true if the obj type you follow it up with matches what you are comparing it to.

#  (2000).instance_of? Fixnum for example will return true

# .to_a = returns a new array of two element arrays that match a hash's key-value pairs


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#  my_array_splitting_method(array) = Will take an array that contains both strings and numbers, and return a new array that has two sub arrays,
#  one with all the strings and one with all the numbers
#

#  my_hash_splitting_method(source, age) = Will take a hash of Names matched with ages, and a number to seperate the ages by.
#  It will return an array of two arrays, which each contain sub arrays that match the key value pairs of the hash, the first contains pairs with less than or equal the input age
#  the second contains the rest.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#  You often have to spend some time browsing for methods that will work because they are usually not named what you would expect.
# 
#  The select method is very useful if you want to pluck out certain values of an array or hash.