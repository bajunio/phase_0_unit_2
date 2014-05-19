# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode
=begin
# What is the input?  number without commas
# What is the output? number with commas in correct places
# What are the steps needed to solve the problem?

Define method separate_comma accepting one argument, value
	return value if value less than 1000
	create new array, splitting up value into strings and into reverse order
	step through the array and insert a comma every 3rd position
	join up my new array and reverse it once more
End

=end


# 2. Initial Solution
=begin
def separate_comma(value)
	return value if value < 1000
	value = value.to_s
	puts "this is my value: #{value}"
	array = []
	array = value.split("").to_a.reverse!
	(3..array.length + 1).step(4).each {|index| array.insert(index, ",")}
	puts "this is my array: #{array}"
	array = array.join()
	puts "this is my joined array: #{array}"
	array = array.reverse!
	puts "this is my joined reversed array: #{array}"
end


num = Random.new.rand(100_000_000...100_000_000_000)
puts num
separate_comma(num)
=end

# 3. Refactored Solution


def separate_comma(value)
	value.to_s if value < 1000
	array = Array.new(value.to_s.each_char.to_a.reverse!)
	(3...array.length).step(4).each {|index| array.insert(index, ",")}
	array = array.join().reverse!
end

# 4. Reflection 
=begin
This challenge had my puzzling around for a bit.  Once I got the hang of the #step method, 
it became much easier to figure out a solution.  As I look back on my refactored code I
can't help but feel like that is still to messy.  Line 42 is required for spec, but I feel
that lines 44 and 45 could somehow be combined.  The only thing I'm thinking is that since
I'm iterating through that array, it would be difficult to include my #reverse or #join.
=end