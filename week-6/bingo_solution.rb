# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
#   create an array for each letter of bingo #do I need this? can I just use a number internally?
#   generate a random number 0-4 to find a random bingo letter
#   generate a random number 1-100
# # Check the called column for the number called.
#   in the correct column, see if the array contains the number

# # If the number is in the column, replace with an 'x'
#   The board of the column,numbers position is set to x

# # Display a column to the console
#   for each number in the column, puts the element.

# # Display the board to the console (prettily)
#  do 5 times for num
#    for each column
#      print the column's element in the num position, then space
#   print a new line after each num

    

# Initial Solution

class BingoBoard

  
  def initialize(board)
    @bingo_board = board
    
    
  end

  def next_number
    
    column = rand(0..3)
    number = rand(100)
    
    
    
    puts "Generated column: #{column}, number: #{number}"
    
    if @bingo_board[column].include?(number)
      @bingo_board[column][@bingo_board[column].index(number)] = "x"
    end
    
  end

  
#   def print(column)
#     puts @bingo_board[column]
  
    
#   end
  
  def print_board
    
    for num in 0..4
      for column in 0..4
        if @bingo_board[column][num].is_a?(String)
          print " " + (@bingo_board[column][num]).to_s + " | "
        elsif @bingo_board[column][num] < 10  
          print " " + (@bingo_board[column][num]).to_s + " | "
        elsif @bingo_board[column][num] == 100
          print (@bingo_board[column][num]).to_s + "| "
          else
          
        print (@bingo_board[column][num]).to_s + " | "
        end
        
      end
      puts ""
    end
    
  end
  
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

100.times do new_game.next_number
end

new_game.print_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   It was okay I guess. I'm still not sure how in depth or general I need to be when psuedocoding.

# What are the benefits of using a class for this challenge?
#   If we were to play an actual game, we could have multiple different boards at once.

# How can you access coordinates in a nested array?
#   By refrerencing the array[outerarray][inner array]

# What methods did you use to access and modify the array?
#   I used .include? to see if a number was in the array. .each to go through an array. and .index, to find the index of an element in the array. 

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   .is_a?(type name) is a method that returns true or false if the thing you are calling it on is the same type as the argument. I used it here just to make the format for the print a bit better by checking whether an element was a string before doing something about it.

# How did you determine what should be an instance variable versus a local variable?
#   I only really needed one instance variable for the board, because it is accessed throughout. I needed only 2 local variables for the row and column generated randomly.

# What do you feel is most improved in your refactored solution?
#   I spent a lot of time making the print out of the board look perfectly aligned and readable. I didn't do it very effeciently though I don't think.