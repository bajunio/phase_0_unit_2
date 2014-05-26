# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  Accept an array and create a die based on those values - 1 per side
# Output:  Random display from one of the sides.
# Steps:

define Die class

define initialize accepting one arg, labels
  raise AE if labels empty?
  set local var @labels equal to labels
end

define sides, no args
  return @labels length
end

define roll, no args
  call a random element from array via rand with cap of @labels.length
end

end class


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
    raise ArgumentError, "Must contain at least one label." if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end

#array = ["A", "B", "C", "D", "E", "F"]
#die = Die.new(array)
#p die.sides
#p die.roll


# 1. DRIVER TESTS GO BELOW THIS LINE

p Die.instance_method(:initialize).arity == 1
p Die.new(["A", "B", "C", "D", "E", "F"]).sides == 6
p Die.new(["A", "B", "C", "D", "E", "F"]).roll.include?("J") == false





# 5. Reflection 
=begin 

Another fairly straight-forward challenge.  I see that basically we were
able to asign a letter to a particular side of the die we created.  Certain
board games would benefit from this assoication. 

=end