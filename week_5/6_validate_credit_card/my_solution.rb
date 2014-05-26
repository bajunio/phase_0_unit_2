# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: numeric value equal to 16 digits
# Output: verification if it passes luhn's formula
# Steps:
=begin 

define a class CreditCard

define initialize accepting one arg, number
  raise error unless number is 16 digits
  set @number to number
end

define check_card method, no args
  create new array arr by splitting @numbers
  convert new array elements to integers
  range step through array to double every other element 
  convert the elements back to strings...
  join the array into var new_number
  create new array arr2 by splitting new_number
  yeah, lets put that new array to all integers now...
  if the sum of arr2 mod 10 equals 0 return true
end 

end class

=end
# 3. Initial Solution
=begin
# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

def initialize(number)
  raise ArgumentError, "Must be 16 digits!" unless numbers.to_s.length == 16
  @number = number
end

def check_card
  arr = Array.new(@number.to_s.split(""))
  arr.map! {|x| x.to_i}
  (0...arr.length).step(2) {|every_other| arr[every_other] *= 2}
  arr.map! {|x| x.to_s}
  new_number = arr.join
  arr2 = Array.new(new_number.split(""))
  arr2.map! {|x| x.to_i}
  p arr2
  if arr2.inject(:+) % 10 == 0
    true
  else
    false
  end
end

end



=end
# 4. Refactored Solution

class CreditCard

  def initialize(number)
    raise ArgumentError, "Must be 16 digits!" unless number.to_s.length == 16
    @number = number
  end

  def check_card
    arr = Array.new(@number.to_s.split(""))
    arr.map! {|x| x.to_i}
    (0...arr.length).step(2) {|every_other| arr[every_other] *= 2}
    arr.map! {|x| x.to_s}
    arr2 = Array.new(arr.join.split(""))
    arr2.map! {|x| x.to_i}
    arr2.inject(:+) % 10 == 0
  end
  
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p CreditCard.instance_method(:initialize).arity == 1
p CreditCard.instance_method(:check_card).arity == 0

p CreditCard.new(4408041234567893).check_card == true
p CreditCard.new(4408041234567892).check_card == false


# 5. Reflection 
=begin 
This was a pretty fun challenge.  I enjoyed sorting through the 
check_card method.  Its a damned mess and I plan to revisit when
I have completed the rest of this week's challenges.

Every time I look at code like mine above, I figure that someone
else must have already ran into this problem before.  There must
be some awesome built-in method that makes all of that mess just
seem to work...
=end 
  