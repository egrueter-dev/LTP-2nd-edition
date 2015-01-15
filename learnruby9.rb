# Chapter 15

#Creating New Classes Changing Existing Ones

# class Integer
#   def to_eng
#     if self == 5
#       english = 'five'
#     else
#       english = 'forty-two'
#     end
#   english
#   end
# end
#
# puts 5.to_eng


#Extending built in classes


class Integer
  def to_fact
    int = self
    while int > 0
      number = int * int
      puts number
      int -= 1
    end
  end
end

8.to_fact
