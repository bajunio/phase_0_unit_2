# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

$boggle_board = [["b", "r", "a", "e"],
                 ["i", "o", "d", "t"],
                 ["e", "c", "l", "r"],
                 ["t", "a", "k", "e"]]



# Part 1: Access multiple elements of a nested array

# Pseudocode



# Initial Solution

  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution



# DRIVER TESTS GO BELOW THIS LINE

 puts create_word($boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code" #=> returns "code"  
 puts create_word($boggle_board, [0,1], [0,2], [1,2]) == "rad" #=> creates what california slang word?

# Reflection 
=begin 
Good work DBC!  : )  

I was glad to look through this method and see how you worked out the logic.
=end
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

define get_row accepting one arg, row
  return the board[row]
end


# Initial Solution

def get_row(row)
  return $boggle_board[row]
end


# Refactored Solution
=begin 

Unsure if I can take it further than that.

=end
# DRIVER TESTS GO BELOW THIS LINE

p get_row(1) == ["i", "o", "d", "t"]

# Reflection 
=begin 

This one seemed like a no-brainer.  Just return the index in the main array that holds the row.

=end
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
=begin
Define get_col to accept a single argument col 
  create column array 
  range loop 0-3
    push boggle_board[loop number][col]
  end
  return the column array
end
=end
# Initial Solution

def get_col(col)
  column = []
  for i in 0..3
    column << $boggle_board[i][col]
  end
  column
end

# Refactored Solution
=begin 

This was the best I could do on my own.  After I was able to get
things working to the best of my ability, I checked in with a 
fellow boot.  He had used Matrix#transpose to rework the nested 
array.  The code looked very slick and I can see how it would cut
my for loop right out of the picture.

=end
# DRIVER TESTS GO BELOW THIS LINE

p get_col(1) == ["r", "o", "c", "a"]

# Reflection 
=begin 
Getting the column was a bit more tricky than getting the row.
I opted to go with a for loop that would act as my counter to 
advance through the nested arrays.  The col argument would
remain consistent so that would be easy enough.
=end
 