# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?



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



=end