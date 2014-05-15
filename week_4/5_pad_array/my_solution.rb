# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

class Array
	
	def pad(*args)
		raise ArgumentError, "Too many arguments!" if args.length > 2
		@number, @default_push = *args
		
		if self.size < @number
			@difference = @number - self.size
			new_array = Array.new(@difference, @default_push)
			self.concat(new_array)
		else
			self
		end
	end
end

	def pad!(*args)
		raise ArgumentError, "Too many arguments!" if args.length > 2
		@number, @default_push = *args
		
		if self.size < @number
			@difference = @number - self.size
			new_array = Array.new(@difference, @default_push)
			self.concat!(new_array)
		else
			self
		end
	end
end



# 3. Refactored Solution



# 4. Reflection 




#make an array from the new shit and then concat them bitches!