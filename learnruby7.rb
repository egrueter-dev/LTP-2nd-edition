# Recursion

#
# def ask_recursivley question
#   puts question
#   reply = gets.chomp.downcase
#
#   if reply == 'yes'
#     true
#   elsif reply == 'no'
#     false
#   else
#     puts 'Please answer "Yes" or "No".'
#     ask_recursivley question
#   end
# end
#
# ask_recursivley "Hello?"
#
#

#
# def ask_recursively question
#   puts question
#   reply = gets.chomp
#
#   if reply == "yes"
#     true
#   elsif reply == "no"
#     false
#   else
#     puts "You must answer yes or no.."
#     ask_recursively question
#   end
# end


# ask_recursively "Does this work?"
#

# def factorial(num)
#   if num >= 2
#     num * factorial(num-1)
#   else
#     1
#   end
# end
#
# puts factorial(10)
#
# world = [
# [o,o,o,o,o,o,o,o,o,o,o],
# [o,o,o,o,M,M,o,o,o,o,o],
# [o,o,o,o,o,o,o,o,M,M,o],
# [o,o,o,M,o,o,o,o,o,M,o],
# [o,o,o,M,o,M,M,o,o,o,o],
# [o,o,o,o,M,M,M,M,o,o,o],
# [o,o,o,M,M,M,M,M,M,M,o],
# [o,o,o,M,M,o,M,M,M,o,o],
# [o,o,o,o,o,o,M,M,o,o,o],
# [o,M,o,o,o,M,o,o,o,o,o],
# ]
#
#
# def continent_size(world, y, x)
#   if world[y] [x] != 'land'
#     return 0
#   end
#   size = 1
#   world[y] [x] = 'counted land'
#
#   size = size + continent_size(world, x-1, y-1)
#   size = size + continent_size(world, x,   y-1)
#   size = size + continent_size(world, x+1, y-1)
#   size = size + continent_size(world, x+1, y)
#   size = size + continent_size(world, x-1, y)
#   size = size + continent_size(world, x-1, y+1)
#   size = size + continent_size(world, x,   y+1)
#   size = size + continent_size(world, x+1, y+1)
#
#   size
# end
#
#
# puts continent_size(world, 5, 5)


#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<#Sorting solution

#
# def sort arr
#   rec_sort arr, []
# end
#
#
# def rec_sort unsorted, sorted
#   if unsorted.length <= 0
#     return sorted
#   end
#
# smallest = unsorted.pop
# still_unsorted = []
#
# unsorted.each do |tested_object|
#   if tested_object < smallest
#     still_unsorted.push smallest
#     smallest = tested_object
#   else
#     still_unsorted.push tested_object
#   end
# end
#
# sorted.push smallest
#
# rec_sort still_unsorted, sorted
#
# end
#
# puts(sort(['can','feel','singing','like','a','can']))

def sort arr
  return arr if arr.length <= 1
  middle = arr.pop #WTF! why is that taking all three?
  puts "middle = #{middle}"
  less = arr.select {|x| x < middle }
  puts "less = #{less}"
  more = arr.select {|x| x >= middle }
  puts "more = #{more}"
  sort(less) + [middle] + sort(more)

end
 sort([1,2,1])
