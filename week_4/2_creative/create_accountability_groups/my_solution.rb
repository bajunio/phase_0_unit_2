# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:  Accept hash table with names and email addresses.
# Output:  Sorts hash table and outputs even groups of no less than 4.
# Steps:  Start Sublime, ???, profit.  


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

#magic time!


def create_groups(array)
	array = array.shuffle 	
	$groups = Array.new
	$groups = array.each_slice(4).to_a
end

# 4. Refactored Solution
=begin
This method was built using a lot of built-in methods for Ruby.
The only real refactoring I did was add global scope for my $groups variable.
I had ran into trouble attemping to print (I like the display of print over puts
 when I'm working with arrays) my groups to the screen for testing.   
=end







# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


