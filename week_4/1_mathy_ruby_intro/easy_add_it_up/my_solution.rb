=begin
# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

Define total to accept one argument
	apply the inject method to argument
end

Define sentence_maker to accept one argument
	apply the join method to the array
	make the argument in the join a space " "
	chain the method capitalize to pass spec
	ensure "." string is added to the return
end


# What is the input?

Both methods below will accept arrays and return different results.

# What is the output? (i.e. What should the code return?)

The output for the first will be the sum of the values within the array added together.
The output for the second will be a joining of multiple string objects in an array.  

# What are the steps needed to solve the problem?

Please see PCode above.

=end
# 2. Initial Solution

def total(array)
	array.inject(:+)
end

def sentence_maker(array)
	array.join(" ").capitalize + "."
end


=begin
# 3. Refactored Solution

The two methods that were asked to be created are about as basic as can be.  
Not much going on there to refactor.  

# 4. Reflection 

Easy challenge is easy.  It was nice to work with Ruby again.  I just love how it flows
out of my mind so well.  I've missed you implicit returns...  Curious - should I be using
the command "return" as a best practice when writing my syntax?  I'm thinking it may 
increase the readability of my code.  JavaScript is pretty straight forward as well, 
but something super soothing about manipulating Ruby's syntax.  

=end

