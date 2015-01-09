### Blocks and Procs

#Proc example #1
  # toast = Proc.new do
  #   puts 'Cheers!'
  # end
  #
  # toast.call

#Procs can take inputs much like methods
#
# do_you_like = Proc.new do |anything|
#   puts "I really like #{anything}"
# end
#
# do_you_like.call 'chocolate'


# def do_self_importantly some_proc
#   puts "Everybody just HOLD ON!, I'm doing something..."
#   some_proc.call
#   puts "OK everyone, I'm done. As you were"
# end
#
# say_hello = Proc.new do
#   puts 'hello'
# end
#
# do_self_importantly say_hello


# def do_until_false first_input, some_proc
#   input = first_input
#   output = first_input
#
#   while output
#     # input = output
#     output = some_proc.call input
#    end
#
#   input
# end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array.push last_number * last_number
    array.push last_number-1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect
