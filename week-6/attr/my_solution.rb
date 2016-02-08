#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

attr_reader :name

  def initialize(name)
    @name = name
  end
  
  
end


class Greetings
  
  def initialize
    @name = NameData.new("Student")
  end
  
  def hello
    puts "Hello #{@name.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
# 1
# What are these methods doing?
# They are setting the instance variables for the class. And then printing them all out on the console.

# How are they modifying or returning the value of instance variables?
# They are using class methods only.

# 2
# What changed between the last release and this release?
#   The way the instance variables were read and changed.
# What was replaced?
#   I am assuming the class methods for reading the info from the class.
  
# Is this code simpler than the last?
# Yes it has a lot fewer methods.

# 3
# What changed between the last release and this release?
#   The attr_accessor replaced the read and write.

# Is this code simpler than the last?
#   Yes by one line.
  

# What is a reader method?
#   A method that lets you see an instance variable.
# What is a writer method?
#   A method that lets you change an instance variable.
# What do the attr methods do for you?
#   It automatically creates reader or writer methods based on the instance variable names.
# Should you always use an accessor to cover your bases? Why or why not?
#   No, sometimes you might want to make sure a variable cannot be changed or read, accidentally or purposefully.
# What is confusing to you about these methods?
#   I guess what exactly is going on, "underneath".  What does the code that makes attr work look like?
  
  


