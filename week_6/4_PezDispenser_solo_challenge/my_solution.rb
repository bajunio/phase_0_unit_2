# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
new class PezDispenser
	define initialize accepting one arg, flavors_array
		set instance var @flavors equal to flavors_array
	end

	define see_all_pez, no args
		iterate through @flavors and display contents
	end

	define add_pez accepting one arg, flavor
		push flavor to @flavors array 
	end

	define get_pez
		pop the last element from @flavors
	end

	define pez_count
		return @flavors size
	end

end class

=end
# 3. Initial Solution

class PezDispenser
	def initialize(flavors_array)
		@flavors = flavors_array
	end

	def see_all_pez
		@flavors.each { |flavor| puts flavor }
	end

	def add_pez(flavor)
 		@flavors << flavor
 	end

 	def get_pez
 		@flavors.pop
 	end

 	def pez_count
 		@flavors.size
 	end
end
 


# 4. Refactored Solution
=begin 

not very much that can be broken down here

=end
# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection
=begin 

I really felt pretty strong with this one.  After researching for my blog post last week
on Ruby Classes, I felt like I had overcome some of my insecurities.  It became evident
to me when I was planning out the layout of my Class structure.  I no longer questioned 
the relationship with instance variables and simply applied my training to my output. 
It was really nice to have my first stab at code just work.  I put these methods down
in less than 10 minutes and it ran right out of the gate.  Super good feeling.

=end