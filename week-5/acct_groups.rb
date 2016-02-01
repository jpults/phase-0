#PsuedoCode
# Input = an array of names
# Output = An array of sub-arrays which are accountability groups of 3-5
# Steps:
# Determine how many students
# if students % 5 is greater than 0, make the group number students/5 + 1 otherwise just students/5
# Create final groups array of size (# of groups) filled with empty arrays
# While students is NOT empty
#    Loop from 0 to number of groups
#         Pop off a student from the list
#         Push it on to the group number index in the final groups array


# Return the final groups array  




def group (students)
  
  if (students.length)%5 >= 1
    groups = students.length / 5 + 1
  else 
    groups = students.length / 5 
  end
  
  students.shuffle!
  
  puts " There are #{groups} groups"
  
  acc_groups = Array.new(groups) {|e| e = []}
  
  
  while !students.empty?
    
    for i in 0...groups
      
      student = students.pop
      
      if student != nil
      
         acc_groups[i].push(student)
        
      end
      
    end
    
  end

  
  return acc_groups
end





students = ["Jack","Jill", "Dan", "Jeff" , "George" , "Kyle", "Zapada", "Stan", "Cartman", "Harry", "Eric", "Lastrade", "Sherlock", "Poop", "Hello", "Test", "Jason", "Jeremy", "Jake"]


print group(students)



# What was the most interesting and most difficult part of this challenge?   Getting the math right. It took me a while to determine the best order to loop through and add a name to each group. I tried simply dividing the index by the number of groups but that left a remainder group that was too small.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?  A little bit. I could not fully visualize the problem in psuedocode so I had to go back and change it once I figured it out. 

# Was your approach for automating this task a good solution? What could have made it even better?  I think it was, even if it seems a little complicated. It would have helped to have a method which told me how many groups I needed to divide as evenly as possible (including the remainder).

# What data structure did you decide to store the accountability groups in and why?  An array containing arrays that are the groups themselves.  I did not really need any unique keys since the groups are just numbered. And the groups themselves are just lists.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?  I only learned that you can create new arrays with Array.new(size) {|index| what to put in each index}  It was helpful for creating an array of empty arrays.