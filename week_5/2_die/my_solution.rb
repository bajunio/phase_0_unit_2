# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  Accept an array and create a die based on those values - 1 per side
# Output:  Random display from one of the sides.
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError, "Must contain at lease one label." if labels.empty?
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[(1 + rand(@labels.length))]
  end
end

array = ["A", "B", "C", "D", "E", "F"]
die = Die.new(array)
p die.sides
p die.roll

# 4. Refactored Solution
=begin
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



=end
# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
