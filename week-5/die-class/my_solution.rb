




# Define the class Die
# Create initialize function that takes number of sides and creates the instance variable for sides
# Create sides function that returns the number of sides
# Create roll function that gives random number between 1 and # of sides
# 










# include error.c


class Die 
  def initialize(faces)
    
    if faces < 1
      raise ArgumentError.new("Must be and integer greater than 0")
    else
      @sides = faces
    
    
      puts "initializing"
      puts @sides
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
    
    return rand(1..(@sides) )
    
  end
  
  
end



six =  Die.new(100)



 puts six.roll
 
 
# What is an ArgumentError and why would you use one? A error message that is printed when you put the wrong arguments into a method. It helps you find a problem more quickly when debugging.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them? I did not end up using any new ones this time.
# What is a Ruby class? A class is a collection of variables and methods grouped together into one package that can be copied. It creates a type of object, sort of like real life, with its own properties and things that you can do to it and with it.
# Why would you use a Ruby class?  In order to define a group of data that comes together and works together as a package.  For example if you wanted to store the data on baseball players and their stats, a class of BaseBallPlayer could be created to encapsulate all of the information in multiple variations.
# What is the difference between a local variable and an instance variable?  A local variable exist only within a method, and dissapears when the method ends.  An instance variable is stored in each instance of the class as a different thing and does not dissapear until the class instance does.
# Where can an instance variable be used?  Inside the definition of the class.