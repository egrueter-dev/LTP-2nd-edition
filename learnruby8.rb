## Block Examples

# [1,2,3].each {|x| puts x * 2}
#
# #or
#
# [1,2,3].each do |x|
#   puts x * 2
#
# end


#Proc examples

# p = Proc.new {|x| puts x*2 }
# [1,2,3].each(&p) # tells ruby to turn a proc into a block..
#
# proc = Proc.new { puts "Hello World"}
# proc.call

# Lambda Examples
#
# lam = lambda { |x| puts x * 2 }
# [1,2,3].each(&lam)
#
#  lam = lambda {puts "Hello World"}
#  lam.call
#

#Differences between Blocks and Procs

# A proc is an instance of the Proc class.

# p = Proc.new { puts "Hello World" }
# p.call
# p.class
# a = p
# p
# a.class
# a.call


# Blocks and Procs Chapter 16

# toast = Proc.new do
# puts "toast"
# end
#
# toast.call #toast is the instance of the Proc class.

# do_you_like = Proc.new do |good_stuff| #do is always followed by end....
#   puts "I really like #{good_stuff}"
# end
#
# do_you_like.call "Cake"

#You can pass values into a proc like so.
#Procs are best used when you want to pass information into a  method.



#Methods Can Take Procs....
#
# Procs can be called from outside a method.
# def say_something_loud proc
#   proc.call
# end
# hello_world = Proc.new do
#   puts "HI"
# end
#
# puts say_something_loud hello_world


# Methods let you do a finite number of things, wheras procs let you
# add flexibility to your code. Take the example below.


# def random_proc proc
#   if rand(2) == 0
#     proc.call
#   else
#     puts "Nile"
#   end
# end
#
# hello = Proc.new do
#   puts "hello!"
# end
#
# goodbye = Proc.new do
#   puts "Goodbye!"
# end
#
#
# random_proc hello

#The above code lets you not only do hello, or goodbye, but either or.


# def do_until_false first_input, some_proc
#   input = first_input
#   output = first_input
#
# while output
#   input = output
#   output = some_proc.call input
#  end
#
#   input
# end
#
# build_array_of_squares = Proc.new do |array|
#   last_number = array.last
#   if last_number <= 0
#     false
#   else
#     #take off the last number
#     array.pop
#     #and replace it with it's square
#     array.push last_number * last_number
#     #followed by the next smallest number
#     array.push last_number-1
#   end
# end
#
#
# puts do_until_false([5], build_array_of_squares).inspect
#

## write your own loop to reinforce


# def do_until_false
#
#
# calc = Proc.new do |array|
#   last_number = array.last
#   if last_number <= 0
#     false
#   else
#     array.pop
#     array.push last_number -1
#   end
# end
#
# def countdown
#
#
# end



def getting_old(age)
  wealth = 0
  beauty = 99
  wisdom = 0

  while age < 88

    if age < 29
      beauty = beauty += 1
      intelligence = rand(4) + 1
      wealth = rand(100) + 1
    end

    if age > 35
      wealth += 1
      beauty -= 2
      wisdom = wisdom += 1 + rand(2)
    end

    age += 1
  end
  puts "dead at age #{age}"
  puts "beauty #{beauty}"
  puts "wisdom #{wisdom}"
  puts "wealth #{wealth}"
end

getting_old(18)
