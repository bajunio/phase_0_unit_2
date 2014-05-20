# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:  Guess what number the computer is thinking between x and y.
# Output:  
# Steps:


# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    raise ArgumentError, "Please pick a number..." unless answer.is_a?(Integer)
    @answer = answer  
  end
  
  def guess(guess)
    return :high if guess > @answer
    return :correct if guess == @answer
    return :low if guess < @answer
  end

  def solved?
    #return true if @answer == @guess
  end

end

game = GuessingGame.new(10)


p game.solved?   # => false

p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false

p game.guess(10) # => :correct
p game.solved?   # => true



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
