# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.
=begin
# 2. Pseudocode

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

# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

p game.solved? == false # => false
p game.guess(5) == :low # => :low
p game.guess(20) == :high # => :high
p game.solved? == false # => false
p game.guess(10) == :correct # => :correct
p game.solved? == true # => true




# 5. Reflection
=begin 




=end