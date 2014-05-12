=begin
# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

define get_grade method that will accept an array as argument
	calculate average by using inject(:+) for sum then divide by array lenth
	create if tree that will assign letter grade based on average.
end



# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=end
# 2. Initial Solution

def get_grade(array)
	average = (array.inject(:+) / array.length)
	if average >= 90
		return "A"
	elsif average >= 80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	else
		return "F"
	end
end

=begin
# 3. Refactored Solution

Once again, the example is fairly straight forward.  I don't think I can break that if tree
any further.  It can become a case, but I don't really see a need for that.

# 4. Reflection 

So excited to dig deeper into Ruby this week!  During this challenge I just kept picturing 
myself as an overwhelmed high school teacher just looking to automate some of their day's
work.  heh  I seem to like to break problems down into smaller, more easily digestable 
portions.  For instance I focused my first priorities on ensuring the average was being 
properly calculated.  My inital code always has liberal puts in it.  

I suppose I could consider my removal of the puts as refactoring.  


=end