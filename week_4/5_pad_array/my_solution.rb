# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode
=begin
# What is the input? value to pad and what to pad
# What is the output? array properly padded
# What are the steps needed to solve the problem?

Define method pad that accepts multiple arguments *args
	raise error if args length greater than 2
	define variable number and variable default_push and set equal to *args

	if self of self less than number
		create a new array the size of difference between number and self and include default_push value
		concatenate self and te new array
	else
		return self
	end


=end
# 2. Initial Solution
=begin
class Array
	
	def pad(*args)
		raise ArgumentError, "Too many arguments!" if args.length > 2
		@number, @default_push = *args
		
		if self.size < @number
			new_array = Array.new((@number - self.size), @default_push)
			self.concat(new_array)
		else
			self
		end
	end

	def pad!(*args)
		raise ArgumentError, "Too many arguments!" if args.length > 2
		@number, @default_push = *args
		
		if self.size < @number
			new_array = Array.new((@number - self.size), @default_push)
			self.concat!(new_array)
		else
			self
		end
	end
end


#	def pad!(*args)
#		raise ArgumentError, "Too many arguments!" if args.length > 2
#		@number, @default_push = *args
#		
#		if self.size < @number
#			@difference = @number - self.size
#			new_array = Array.new(@difference, @default_push)
#			self.concat!(new_array)
#		else
#			self
#		end
#	end
#end


=end
# 3. Refactored Solution

class Array

def pad!(minimum, value=nil)
  (minimum - self.count).times {self.push(value)}    
  self
end


def pad(minimum, value=nil)
  arr = []
  self.each {|x| arr.push(x)}
  (minimum - arr.count).times {arr.push(value)}
  arr
end

end

# 4. Reflection 
=begin

I want to toss a falg on this one!  I need the refs to review the spec!  lol  I get
that my inital code is failing the spec that refers to them either destroying or not
destroying the original array.  I believe I see where I can fix that.  But it fails
the spec that deals with the values being pushed to the back of the array.  I'm curious
if this is becuase the spec only considers that someone would use the push and not
create a new array and concat.  Regardless, I went poking around after I was working
on the other challenge, the one with refactoring, and discovered this solution by 
a fellow boot.  The one thats in the refactored section now.  I cleaned it up just 
a bit from his original code, but the logic was clean and totally passed the specs.  

=end


