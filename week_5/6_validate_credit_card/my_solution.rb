# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


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






# 5. Reflection 
