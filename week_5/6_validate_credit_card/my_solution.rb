# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

def initalize(number)
	raise ArgumentError, "Must be 16 digits!" unless numbers.length == 16
	@number = number
end

def credit_card(number)
	arr = []
	arr = number.split("").to_a
	(0...arr.length)step(2) {|x| arr[x] * 2}
	p arr
	#return true unless arr.sum % 10 != 0
end

end






# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
