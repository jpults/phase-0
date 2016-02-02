#Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 3
def my_array_sorting_method(source)
    source.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
  source.sort_by {|k,v| v}
end
my_hash_sorting_method(my_family_pets_ages)
#1 Identify and describe the Ruby method(s) you implemented.
# I used the .sort_by method. For the first problem, I was expected to sort the array in alphabetical order. 
#Knowing that the array had integers, I knew I was going to have to modify the integers to become strings. 
#Therefore, I used the .sort_by method, and I told my computer to sort by x,and when going through each item in the 
#array convert them to strings. This created the desired output. For the second problem, I used the same method, the 
#difference is I wanted to sort by the value, so I clearly told my computer there are 2 variables, but I am only requesting
# the variable V. This created the desired output.
#2Teach your accountability group how to use the methods
#As you can see in my code I defined my method that accepts source as an argumement. Then I used .sort_by to sort each of the 
#arguments into a string. This is a pretty simple method and code. 
#3Share any tricks you used to find and decipher the Ruby Docs
#I didn't learn any particular tricks for this particular method. I feel like using built in methods feel like a trick already!
# #
# #
def my_array_deletion_method!(array, x)

  array.delete_if{|str| str.to_s.include?(x)}

end

my_array_deletion_method!(i_want_pets, "a")

p i_want_pets


def my_hash_deletion_method!(hash, name)

hash.delete_if{|key| key.include?(name)}

end

my_hash_deletion_method!(my_family_pets_ages, "George")

p my_family_pets_ages

=begin
Identify and describe the Ruby method(s) you implemented.
The Ruby methods I implemented were .delete_if, .include?, and .to_s.
> .delete_if - Deletes every key-value pair from array or hash for which block evaluates to true.
>.include? - Returns true if the given object is present in self (that is, if any element == object), otherwise returns false.
>.to_s - Creates a string representation of self.
=end


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