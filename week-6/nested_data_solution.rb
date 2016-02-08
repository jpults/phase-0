# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

 



   number_array = [5, [10, 15], [20,25,30], 35]
#  def add(number_array)
#  number_array.each do |element|
#    if element.kind_of?(Array)
#      element.each {|inner| number_array[number_array.index(element)][element.index(inner)] = inner + 5}
#    else number_array[number_array.index(element)] = element + 5  
#    end
#  end
#  end

# add(number_array)


 def add(number_array)
 number_array.each do |element|
   if element.kind_of?(Array)
     element.map! {|i| i+5}
   else number_array[number_array.index(element)] = element + 5  
   end
 end
 end


add(number_array)

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


#Reflection
# What are some general rules you can apply to nested arrays?
#   The deeper in the nest the element is, the more [] you need to get to it.
# What are some ways you can iterate over nested arrays?
#   Loops within loops, .each within .each.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  
#   We used .map! to add 5 to all elements quickly. We also used .kind_of? to see if something was an array or not before acting on it. This one seemed essential.