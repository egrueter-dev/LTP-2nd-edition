## Old School Roman Numerals

################# Standard Numeral Calc..

# def numerals(int)
#   numeral = ''
#   numeral = numeral + "M" * (int / 1000)
#   numeral = numeral + "D" * ((int % 1000) / 500)
#   numeral = numeral + "C" * ((int % 500) / 100)
#   numeral = numeral + "L" * ((int % 100) / 50)
#   numeral = numeral + "X" * ((int % 50) / 10)
#   numeral = numeral + "V" * ((int % 10) / 5)
#   numeral = numeral + "I" * (int % 5)
#
#   print numeral
#
# end
#
# #  numerals(95)


###################### Modern numerals

# def modern_numerals(int)
#
#   numeral = ''
#   numeral = numeral + "M" * (int / 1000)
#   numeral = numeral + "D" * ((int % 1000) / 500)
#   numeral = numeral + "C" * ((int % 500) / 100)
#   numeral = numeral + "L" * ((int % 100) / 50)
#   numeral = numeral + "X" * ((int % 50) / 10)
#   numeral = numeral + "V" *
#   if int % 5 == 4
#     numeral = numeral + "IV"
#   else
#     numeral = numeral + "I" * (int % 5)
#   end
# end
#
# puts modern_numerals(204)
#

def numeral2(int)

  thousands = "M" * (int / 1000)
  fivehun   = "D" * ((int % 1000) / 500)
  hundreds  = "C" * ((int % 500 / 100)
  fifties   = "L" * ((int % 100 / 50)
  tens      = "X" * ((int % 50 / 10)
  fives     = int % 10 / 5
  ones      = int % 5

  # if hundreds < 5
  #    hundreds = ("C" * hundreds) + fivehun
  # end
  # if fifties < 5
  #    fifties = ("L" * fifties) + "C"
  # end
  # if tens < 5
  #    tens = ("X" * tens) + "L"
  # end
  #
  # if fives < 2
  #    fives = ("V" * fives) + "X"
  # end
  if ones == 4
    ones = ("I" * ones) + "V"
  elsif ones < 4
    ones = "I" * ones
  end

  puts (ones + fives + tens + fifties + hundreds + fivehun + thousands)

end

numeral2(13)


#
# 1 IIIIV
# 2 IIIV
# 3 IIV
# 4 IV
# 5 V
#
# 6 VI
# 7 VII
# 8 VIII
# 9 VIIII
# 10 X

#legend.. pg 180

  #5 = V
  #10 = X
  #50 = L
  #100 = C
  #500 = D
  #1000 = M
