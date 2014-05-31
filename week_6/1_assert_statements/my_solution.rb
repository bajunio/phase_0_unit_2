# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 1. Review the simple assert statement
# method assert is attempting to yeild to blocks
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end
# 2. Pseudocode what happens when the code above runs
=begin 

var name is set to "bettysue"
assert method is called and passed block of name == "bettysue" and does not raise message as its true
assert method is called and passed block of name == "billybob" and does raise message as its false

=end
# 3. Copy your selected challenge here

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


# 4. Convert your driver test code from that challenge into Assert Statements

#p CreditCard.instance_method(:initialize).arity == 1
#p CreditCard.instance_method(:check_card).arity == 0

#card = CreditCard.new(4408041234567893).check_card == true
#card = CreditCard.new(4408041234567892).check_card == false

def assert
	raise "Assertion failed!" unless yield
	p "Assertion passed!"
end

assert {card = CreditCard.new(4408041234567893).check_card == true}
assert {card = CreditCard.new(4408041234567892).check_card == false}
assert {CreditCard.instance_method(:initialize).arity == 1}
assert {CreditCard.instance_method(:check_card).arity == 0}

# 5. Reflection
=begin 
Feels like I could have simply written out my regular driver test code
and accomplished the same thing as this.  I do understand that this is
just prep work to get you in the mindset for understanding rspec a bit
better.  

I'm glad to have had a chance to work with yield again. The last time I
had even seen the syntax was ages ago when I was working my way through
Codecademy. I figure there must have already been instances of problems
I had been trying to solve that I could have leveraged blocks and yeild
to make things easier.
=end 