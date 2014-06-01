# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with: Hethe Berg.


# 2. Pseudocode
=begin
define class BoggleBoard

  attr_reader :board

  define ititalize accepting one arg, board
    set @board equal to board
  end

  define get_row accepting one arg, row
      return the board[row]
  end

  define get_col to accept a single argument, col 
      create column array 
      range loop 0-3
        push boggle_board[loop number][col]
      end
      return the column array
  end

  define create_word accepting an unknown number of args, *coords
    map through provided coords
      pass the coords
=end
# 3. Initial Solution
class BoggleBoard
  attr_reader :board
  def initialize(board)
    @board = board
  end

  def get_row(row)
      return @board[row]
  end

  def get_col(col)
      column = []
      for i in 0..3
        column << @board[i][col]
      end
      column
  end
 
  def create_word(*coords)
      coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end
end
 
# 4. Refactored Solution
=begin 
The solution above, with the exception of #get_col, is as refactored as I can
muster.  I saw someone use the #transpose method and it was pretty slick.  I 
need to just bite the bullet and integrate that awesome method into my solution.
=end

# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# implement tests for each of the methods here:
# #get_row example:
p boggle_board.get_row(1) == ["i", "o", "d", "t"]
# #get_col example:
p boggle_board.get_col(1) == ["r", "o", "c", "a"]
# #create_word examples:
p boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code" #=> returns "code"  
p boggle_board.create_word([0,1], [0,2], [1,2]) == "rad" #=> creates what california slang word?
p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" 
# Sigle character return:
p boggle_board.board[3][2] == "k"

# 5. Reflection 
=begin 
Wow!  It was awesome how quickly we were able to copy and paste our original
methods from last weeks project, make some simple changes, and then turn it 
into something more functional.  Not to mention that we can now start to do 
things like randomly generate a board for more dynamic play. 

I feel this challenge was useful for me to better understand nested data 
structures.  Going into this challenge I was comfortable wrapping my mind
around the idea of nested arrays but having to apply that level of comfort
to a working challenge really solidified the steps.
=end 