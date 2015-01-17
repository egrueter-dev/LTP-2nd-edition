#coderbyte challenges
# calclulate factorial
# def fact(n)
#   if n <= 1
#     1
#   else
#     n * fact(n-1)
#   end
# end
#
# puts fact(8)


#Reverse a string

def FirstReverse(str)
  new_str = ''
  loop_t = str.length
  while loop_t > 0
    new_str << str[loop_t -1]
    loop_t -= 1
  end
    return new_str
end


puts FirstReverse("erik")
