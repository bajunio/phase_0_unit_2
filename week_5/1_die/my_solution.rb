# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  Number of sides for our new die.
# Output:  Ability to question amount of sides and also roll random.
# Steps:
define class Die

define initialize method accepting one arg, sides
  raise AE if sides < 1
  set @sides equal to sides
end

define sides method, no args
  return @sides
end

define roll method, no args
  return random number up to @sides 
end

end class



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


# 4. Refactored Solution
=begin 
Not much to refactor here.
=end
# 1. DRIVER TESTS GO BELOW THIS LINE

p die.new(6).sides == 6
p die(6).roll > 1 < 6


# 5. Reflection 
=begin 
My D&D friends would all be so pleased!  

This was a fairly simple challenge.  I can see that we'll be
building upon this in the coming week.  Looking forwards to 
expanding the code!

=end