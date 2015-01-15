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
#
# #Lambda Examples
#
# lam = lambda { |x| puts x * 2 }
# [1,2,3].each(&lam)
#
#  lam = lambda {puts "Hello World"}
#  lam.call
k

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

## write your own proc/method combo to reinforce

# def fun_stuff(proc_calc,array)
#   last_array = array.pop
#   if array.length < 2
#   proc_calc.call array
#   else
#   puts last_array
#   end
# end
#
# calc_arr = Proc.new do
#   puts "There is only one item in the array, dude"
# end
#
#
# fun_stuff(calc_arr,[1])


#Erik's Proc Challenge
# Create a program that sorts an array by calling a proc on the array if
# there are more than 1 values inside of it.




def sort_array(some_proc, array)
  if array.length <= 1
    puts "This array only has one value, dude"
  else
  sort_array(sort array, array)
  end
end



sort = Proc.new do |array|
  pivot = array.pop
  less = array.select {|x| x < pivot}
  more = array.select {|x| x > pivot}
end

sort_array(sort, [1,2,3])
