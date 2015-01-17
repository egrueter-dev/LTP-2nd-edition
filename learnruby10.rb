# #blocks, nested blocks to be exact.....
#
#
# array.each do |x|
#   puts "first #{x}"
#   array.each do |x| #executes the same blog again in between the first and second value..
#     puts "second #{x}"
#   end
# end
#
#
# array = [1,2]
#
# array.each do |x|
#   puts "first #{x}"
#   array.each do |x2| #in between the first and second block, call the value used in the first
#     # part of the program the # of times the array is large, then move on.
#     puts "second #{x}"
#   end
# end
