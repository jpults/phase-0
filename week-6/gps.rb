# Your Names
# 1)
# 2)



# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# We spent [#1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless  library.key?(item_to_make)
    
  
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" unless remaining_ingredients != 0
  
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items:  You could make #{(remaining_ingredients / library["cookie"])  } Cookie" unless remaining_ingredients < 1 || remaining_ingredients >= 5
  
   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: You could make #{(remaining_ingredients / library["cookie"])  } Cookie or #{(remaining_ingredients / library["cake"] )} Cake" unless remaining_ingredients < 5 || remaining_ingredients >= 7
  
    
end

p serving_size_calc("pie", 12)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("Coffee Cake", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
#   Using methods with easy to understand names is always good. My partner taught me that (unless) can help make things a lot more readable too. 
  
# Did you learn any new methods? What did you learn about them?
#   .key will check if a hash contains a given key.
  
# What concepts were solidified when working through this challenge?
#   Throwing errors. The syntax and their purpose had confused me before. 