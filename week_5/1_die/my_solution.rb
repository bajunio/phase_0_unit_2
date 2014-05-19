# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  Number of sides for our new die.
# Output:  Ability to question amount of sides and also roll random.
# Steps:




# 3. Initial Solution

class Die
  def initialize(sides)
    raise ArgumentError, "Die must contain at least one side." if sides < 1
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end

some_number = 1 + rand(100)
die = Die.new(some_number)
p die.sides
p die.roll

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

#p die.new(6).sides == 6
#p die(6).roll > 1 < 6





# 5. Reflection 