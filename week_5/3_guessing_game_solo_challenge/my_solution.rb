# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

=begin
# Input:  Guess what number the computer is thinking between x and y.
# Output:  Two methods; guess will return clues, and solved? will return true/false.
# Steps:

Define Class GuessingGame
  Define Initalize accepting answer as single arguement
    answer must be an Integer
    set instance variable
    establish a base value of false for checking right_answer
  end

  Define guess method accepting one arguement of answer
    return :high if guess greater than @answer
    return :low if guess less than @answer
    if guess equals @answer
      set @right_answer to true
      return :correct
    end
  end

  Define method solved? accepting no arguement
    return true/false based on @right_answer
  end

end class
=end
# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    raise ArgumentError, "Please input an integer..." unless answer.is_a?(Integer)
    @answer = answer
    @right_answer = false
  end

  def guess(guess)
    @right_answer = false
    return :high if guess > @answer
    return :low if guess < @answer
    if guess == @answer
      @right_answer = true
      return :correct      
    end
  end

  def solved?
    @right_answer
  end 

end



# 4. Refactored Solution

=begin 
THe only thing I can think to slim this down would be to introduce
a case statement in the GuessingGame#guess method.  Unsure if that
would really even be an upgrade.
=end

# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

p game.solved? == false 
p game.guess(5) == :low 
p game.guess(20) == :high 
p game.solved? == false 
p game.guess(10) == :correct 
p game.solved? == true 




# 5. Reflection
=begin 

There something about working with symbols that kinds of throws me off.
I guess I can wrap my mind around them, but I'm certain there is more
functionality that can be associated with them.  

The more I'm exposed to classes the more natural the flow of them is 
begining to feel.  I can't wait to hook in some real database stuff
with all of this code.  I want to make something that I can actually
run over and over for a purpose.  Even something as simple as a movie
database.  I'm sure I'll get there sooner than later.  : )

=end