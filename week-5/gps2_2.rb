# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:


def print_list (list)

  list.each {|object,amount| puts "#{object} = #{amount}" }
  
end


def create_list (string)
  
  array = string.split
  
  list = Hash.new(0)
  
  array.each {|word| list[word] = 1 }
    
  
  print_list(list)
    
  return list
  
end





def add_item (name, quantity=1, list)

  list[name] = quantity
  	
  return list
  
end




def remove_item (name,list)
  
  list.delete(name)
  
  return list
  
end


def update_item (name,quantity,list)
  
  
  return add_item(name,quantity,list)

  
end


grocery_list = create_list("")

puts "Lets add stuff"
add_item("Lemonade",2,grocery_list)
add_item("Tomatoes",3,grocery_list)
add_item("Onions",1,grocery_list)
add_item("Ice Cream",4,grocery_list)
print_list(grocery_list)

puts "Remove Lemonade"
remove_item("Lemonade",grocery_list)
print_list(grocery_list)

puts "Less Ice Cream"
update_item("Ice Cream",1,grocery_list)
print_list(grocery_list)






