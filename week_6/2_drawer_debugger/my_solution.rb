# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer
attr_reader :contents

# Are there any more methods needed in this class? => Only if more functionality is required beyond provided driver code.

def initialize
  @contents = []
  @open = true
end

def open
  @open = true
end

def close
  @open = false
end 

def add_item(item)
  @contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing? => #pop removes and returns the last item in an array
  @contents.delete(item)
end

def dump  # what should this method return? => an empty @contents array
  @contents.clear
  puts "Your drawer is empty."
end

def view_contents
  puts "The drawer contains:"
  @contents.each {|silverware| puts "- " + silverware.type }
end
end #class

class Silverware
attr_reader :type, :clean

# Are there any more methods needed in this class? => Yes, clean_silverware

def initialize(type, clean = true)
  @type = type
  @clean = clean
end

def eat
  puts "eating with the #{type}"
  @clean = false
end

def clean_silverware
  puts "cleaning your #{type}"
  @clean = true
end

end


knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents
 
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? => Empty drawer!

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
# Ended up creating a new fork (we dumped it earlier) and added it to the drawer.
fork.eat

#BONUS SECTION => Added clean to attr_reader so it could be called outside of the class
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

assert {silverware_drawer.class == Drawer}
assert {silverware_drawer.contents.empty? == true}
assert {fork.clean == false}

# 5. Reflection 
=begin 

I had to restart this challenge.  My first attempt took me down so many
rabbit holes.  I had setup numerous conditional statements to handle if
the Silverware were clean or not before it would be allower back into
the drawer.  This was fine and I felt like I had control over the code, 
however it felt that I was completely altering the existing driver code.
I figured it would be best to stick with what was provided and make it
work before I went out into space.

Overall, the challenge was fairly straight forward.  It seems that I 
unlocked some understanding that has made working wihin classes a bit
easier.  I had looked into this challenge at the begining of my week's
study and found all of the rabbit holes.  It was today that I attacked
it in a different way and opted to just fix the problems as they were 
given to me and not try to completely reinvent the code base adding in
all sorts of restrictions.

=end