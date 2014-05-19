# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4

# My Array Deletion
def my_array_deletion_method(source, thing_to_delete)
	source.each {|index| source.delete(index) if index.include?(thing_to_delete)}
end
# My Hash Deletion
def my_hash_deletion_method(source, thing_to_delete)
	source.each {|key, value| source.delete(key) if key.include?(thing_to_delete)}
end
# Why not both?
def my_deletion_method(source, thing_to_delete)
	if source.is_a?(Array)
   		source.each {|index| source.delete(index) if index.include?(thing_to_delete)}
   else
   		source.each {|key, value| source.delete(key) if key.include?(thing_to_delete)}
   	end
end


#Identify and describe the ruby method you implemented.
=begin
I took it upon myself to combine the two methods into one.  I had them split into two and then 
saw an easy way to make them one with a simple if x.is_a? statement.  I will also include the 
two seperate methods so the driver code below will function properly.

I'm using an Object#is_a?() to ask if my source variable is of the Array class.  Calling this
method will result in a true/false which will be used to lead my if statement.
Example: "Brian".is_a?(String) => true

An iteration method #each was used to loop through the array / hash.
Example: [1,2,3].each {|index| index ** 2} => [1,4,9]

The Array# and Hash# share quite a few methods, for example; #delete() and #include?().  I first 
use the #include?() method to output true/false in order to check against my index if it contains 
the thing_to_delete.  If it does contain what I need to delete, I call the #delete() method and
pass it the argument, index.  
Example: "Willy Wonka".include?("z") => false
Example: ["a", "b", "c"].delete("b") => ["a", "c"]
Example: {key1: value1, key2: value2}.delete(key1) => {key:2 value2}
=end



################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
=begin
  
Another really fun exercise!  I like how when I finished up the exercise my brain was still
firing and wanting to do more with it.  That's how the Why not both? came to be.  heh  ruby
really is a fun language to learn.  Every time I learn a new built-in method I feel like I'm
moving from asking about the weather and starting to enter conversational zone!