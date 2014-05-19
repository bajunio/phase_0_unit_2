# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  Accept an array and create a die based on those values - 1 per side
# Output:  Random display from one of the sides.
# Steps:


# 3. Initial Solution
=begin
class Die
  def initialize(labels)
    raise ArgumentError, "Must contain at lease one label." if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    random = rand(@labels.length)
    p random
    @labels[random]
  end
end

=end
# 4. Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError, "Must contain at lease one label." if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end

array = ["A", "B", "C", "D", "E", "F"]
die = Die.new(array)
p die.sides
p die.roll


# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
