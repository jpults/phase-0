# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#1] hours on this challenge.

# --- error -------------------------------------------------------

 cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
# =>  170
# 3. What is the type of error message?
#    Syntax Error 
# 4. What additional information does the interpreter provide about this type of error?
#     It expected an end to the input of the line, it wanted an "end"
# 5. Where is the error in the code?
# =>  On line 15-16 
# 6. Why did the interpreter give you this error?
# =>  There should be an end to close the while loop

# --- error -------------------------------------------------------

south_park = "funny"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
#  undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#  The name of the offending variable or method is south_park
# 4. Where is the error in the code?
#  south_park does not have a value given to it
# 5. Why did the interpreter give you this error?
#   Ruby needs an initial value for new variables

# --- error -------------------------------------------------------

def cartman()
  
end
# 1. What is the line number where the error occurs?
#  51
# 2. What is the type of error message?
#  undefined method
# 3. What additional information does the interpreter provide about this type of error?
#  it is called cartman
# 4. Where is the error in the code?
#  cartman should have an end and a def keyword
# 5. Why did the interpreter give you this error?
#  ruby expected to see an end to the method that was declared

# --- error -------------------------------------------------------

def cartmans_phrase phrase
  puts phrase
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#  67
# 2. What is the type of error message?
#  argument error
# 3. What additional information does the interpreter provide about this type of error?
#  cartmans_phrase has the wrong number of arguments
# 4. Where is the error in the code?
#  the method is called with an input but the method is not defined with one
# 5. Why did the interpreter give you this error?
#  The program stops if we try to call a method with the wrong input


# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Welcome to my chili carnival")

# 1. What is the line number where the error occurs?
#  87
# 2. What is the type of error message?
#  Argumenterror
# 3. What additional information does the interpreter provide about this type of error?
#  Wrong number of arguments
# 4. Where is the error in the code?
#   line 91
# 5. Why did the interpreter give you this error?
#  The method is not called with an argument for it to use.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
#  108
# 2. What is the type of error message?
#  Argument error
# 3. What additional information does the interpreter provide about this type of error?
#   there are the wrong number of arguments
# 4. Where is the error in the code?
#  112
# 5. Why did the interpreter give you this error?
#  the method was called with one argument when it should have two

# --- error -------------------------------------------------------


for i in 1..5 do 
puts "Respect my authoritay!"

end

# 1. What is the line number where the error occurs?
#127
# 2. What is the type of error message?
#  Type Error
# 3. What additional information does the interpreter provide about this type of error?
#   A string cannot be converted to a number
# 4. Where is the error in the code?
#  127  
# 5. Why did the interpreter give you this error?
#   You cannot multiply a string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#   146
# 2. What is the type of error message?
#   Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#    / divided by 0
# 4. Where is the error in the code?
#  Line 146 after the =
# 5. Why did the interpreter give you this error?
#  we tried to divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#  162
# 2. What is the type of error message?
#   Load Error
# 3. What additional information does the interpreter provide about this type of error?
#   It cannot find the file at that location.
# 4. Where is the error in the code?
#  Line 162
# 5. Why did the interpreter give you this error?
#   It could not find any file with the specified name.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

#   Probably the first one because it said the error was in a much different spot.
# # How did you figure out what the issue with the error was?
#   I just went through the order of the code and looked at the first error I found.
# # Were you able to determine why each error message happened based on the code? 
#   Yes, but they were conviently seprated and in order. 
# # When you encounter errors in your future code, what process will you follow to help you debug?
#   Remember the order of the code, look for common mistakes first.  Make sure all syntax is correct, and everything that needs an argument has one. 