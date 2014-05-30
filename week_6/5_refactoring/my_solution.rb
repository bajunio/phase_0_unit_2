# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
=begin
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
=end
# Refactored Solution

class CreditCard
  def initialize(number)9
  	@number = number.to_s.chars.map(&:to_i) 
    raise ArgumentError, "Must be 16 digits!" unless @number.length == 16
  end

  def check_card  	
  	@number.map!.with_index {|x,i| i.even? == true ? x*2 : x}
  	@number.join.chars.map(&:to_i).inject(:+) % 10 == 0 ? true : false
  end  
end

# DRIVER TESTS GO BELOW THIS LINE

p CreditCard.instance_method(:initialize).arity == 1
p CreditCard.instance_method(:check_card).arity == 0

p CreditCard.new(4408041234567893).check_card == true
p CreditCard.new(4408041234567892).check_card == false

# Reflection 
=begin 

I keep thinking that I'm stringing together methods in my application of code, 
but then I see some folks in my chort who just string for days and make cool
things happen.  The above code is pretty much a rip-off of one of my fellow 
boots.  I just really like the way it solves this challenge.  I learned about
the #chars method and became a bit more familiar with the ternary operator
as a result of looking into his code.

I feel that moving forward, I'll continue to wrestle with striking a balance
between being influenced by good coding examples and ripping them off.  As 
long as I take something away from looking into other's solutions and add it
to my building knowledge, it will be worth it.  

=end