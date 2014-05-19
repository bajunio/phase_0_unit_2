=begin
# U2.W4: Create Accountability Groups


# I worked on this challenge by myself.

# 2. Pseudocode
Define method create_groups accepting one argument
	New Array created by shuffling argument, sliceing into four, and putting to an array
End

# Input:  Accept array with names.
# Output:  Shuffles array and outputs even groups of no less than 4 (when possible).
# Steps:  Start Sublime, ???, profit.  

=end
# 3. Initial Solution

#creating hash of users... joy!

#Created a hash to fool with.  I'd like to do the same thing and have it display email
#address with the names.
dbc_boots_hash = {
	Ariel_Fogel: "fogeltine@gmail.com", Hethe_Berg: "hetheberg@gmail.com", Premila_Anand: "panand71@gmail.com",
	Brian_Junio: "bajunio@gmail.com", John_Akers: "johnakersemail@gmail.com", Chandler_Smith: "chandlerhsmith@yahoo.com", 
	Gannon_Curran: "gannoncurran@gmail.com", Tony_Leung: "tleung999@gmail.com", Arik_Gadye: "arikdovgadye@gmail.com",
	Allison_Reilly: "acreilly3@gmail.com", Justin_Harnoss: "justin.harnoss@gmail.com", Morgan_OLeary: "rmhwow@gmail.com",
	Puru_Dahal: "puru@dahal.co", Alex_White: "awhit012@gmail.com", Michele_Murphy: "mmichlemurphy@gmail.com",
	Matthew_Darin: "mgd2233@gmail.com", Steven_Leu: "steven.c.leu@gmail.com", Patrick_Reynolds: "patrickscottreynolds@gmail.com",
	Lauren_Kroner: "lauren.kroner@gmail.com", Albert_Alquisola: "aalquiso@gmail.com", Ernie_Salazar: "ehsalazar75@gmail.com",
	Jared_Chevalier: "brasschaos@gmail.com", William_Pangestu: "pangestu.william@gmail.com"
}

#array needed for the challenge
dbc_boots_array = [
	"Ariel Fogel", "Hethe Berg", "Premila Anand", "Brian Junio", "John Akers", "Chandler Smith",
	"Gannon Curran", "Tony Leung", "Arik Gadye", "Allison Reilly", "Justin Harnoss", "Morgan O'Leary",
	"Puru Dahal", "Alex White", "Michele Murphy", "Matthew Darin", "Steven Leu", "Patrick Reynolds",
	"Lauren Kroner", "Albert Alquisola", "Ernie Salazar", "Jared Chevalier", "William Pangestu"
]

=begin

def create_groups(array)
	array = array.shuffle 	
	$groups = Array.new
	$groups = array.each_slice(4).to_a
end

=end

# 4. Refactored Solution

def create_groups(array)
	Array.new(array.shuffle.each_slice(4).to_a)
end


=begin
Update, I totally lied.  The new refactor up there is WAAAY better than my nonsense from before.  
I'm not sure why I was worried about declaring all of those variables in the method.  Cleaned them
up and was able to knock it all our in one simple Array.new() command.  I LOVE CHAINING METHODS!!


This method was built using a lot of built-in methods for Ruby.
The only real refactoring I did was add global scope for my $groups variable.
I had ran into trouble attemping to print (I like the display of print over puts
 when I'm working with arrays) my groups to the screen for testing.   
=end







# 1. DRIVER TESTS GO BELOW THIS LINE

p create_groups(dbc_boots_array).is_a?(Array)
p create_groups(dbc_boots_array) != dbc_boots_array


=begin
# 5. Reflection 

Are there built-in methods to do this in Ruby?
Will you try to avoid putting the same people together more than once?
If I run this program three times in a row, will the program give me three different outputs? Is that good or bad?
Should it remember past outputs or not?

Of course, there is a built in method to take over the world, I'm sure of it.  I'll find it soon enough.
The superstar method here was certainly Array#each_slice.  I was such a nice find when I was trying to 
brainstorm on splitting this array up into chunks.  Wild how simple it can be just levering the correct
tool for the job!

Every time this method is called on an array it will output a different configuration.  It is what it is,
really.  Its fine if you were just needing it to output a quick seating chart.  If you really wanted
to track you'd have to store these groups of 4 into a hash and have some sort of iteration check if
the values of said hash include any of the same folks in the same group.  

Once again, feels like for the sake of assigning groups for this, I'd say it is not really a big deal
for it to house the past groupings to check against.  


=end