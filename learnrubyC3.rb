## Chapter 2 Exercises

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 100 * ((0.1 + 1/3) ** 3 * ( 3 * 10 ))

puts (365 * 26) * 24 * (60 * 60)

puts (819936000 / 60) / 60 / (24 * 365)

## Chapter 3 Exercises

puts 'I Like' + ' ' + 'Apple Pie'
puts 12 + 12
puts '12' + '12'
puts 'you\'re swell'

## Chapter 4 Variables and Assignments

my_string = '...you can say that again...'
puts my_string
puts my_string

name = 'Anya Christina Emanuella Jenkins Harris'
puts 'My name is' + name + '.'
puts 'Wow! ' + name
puts 'is a really long name!'

composer = 'Mozart'
puts composer + 'was "da bomb" in his day.'

composer = 'Beethoven'
puts 'But i prefer' + composer + ', personally.'

my_own_var = 'just another ' + 'string'
puts my_own_var

my_own_var = 5 * (1+2)
puts my_own_var

## Chapter 5 Mixing It Up

var1 = 2
var2 = '5'
puts var1.to_s + var2

var1 = 2
var2 = '5'
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99'.to_i
puts 'this is a string'.to_i

#puts "Hi! What is your firstname?"
#firstname = gets.chomp
#puts 'what is your middle name?'
#middlename = gets.chomp
#puts 'what is your last name?'
#lastname = gets.chomp
#puts 'your full name is: ' + firstname +  middlename + lastname


## Chapter 6 Methods


puts('hello'.+ 'world')
puts((10.*9). + 9)


puts self

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A Magic Spell'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

#puts 'What is your full name?'
#name = gets.chomp
#puts 'Did you know there are ' + name.length.to_s + ' Characters'
#puts 'In your name, ' + name + '?'

#bonus exercise

#puts 'What is your first name?'
#fname = gets.chomp
#puts 'What is your middle name?'
#mname = gets.chomp
#puts 'What is your last name?'
#lname = gets.chomp

#puts fname.length + mname.length + lname.length

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.capitalize
puts ' a'.capitalize
puts letters


line_width = 50
puts ( 'Old Mother Hubbard'.center(line_width))
puts ( 'Sat in her cuboard'.center(line_width))

line_width = 40

str = '-->text<--'

puts (str.ljust ( line_width))
puts (str.rjust ( line_width))

puts "Hey Boss...."
puts "Boss: What?!?"
#response = gets.chomp
#puts "WHADAYA MEAN, " + response.upcase + "??!? Your're fired!"

#6.4 Arithmetic

puts 5**2
puts 5**0.5
puts 7%3
puts 365%7

puts (5-2).abs
puts (5-2).abs

puts rand(20)

puts 'the weatherman said there is a'
puts rand(101).to_s + '% chance of rain,'
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
puts(rand(100))
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))


puts(Math::PI)
puts(Math::PI/3)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1+ Math.sqrt(5))/2)



#Chapter 7 Flow Control


puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4
puts 1 == 1
puts 2 != 1

puts 'cat' < 'dog'

#branching

#puts 'Hello, what\'s your name?'
#name = gets.chomp
#puts 'Hello, ' + name + '.'

#if name == 'Chris'
#	puts 'What a lovely name!'
#end


#puts 'I am a fortune-teller. Tell me your name:'
#name = gets.chomp

#if name == 'Chris'
#	puts 'I see great things in your future'

#else
#	puts 'Your future is...oh my! Look at the time!'
#	puts 'I really have to go, sorry!'
#end

puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard. And your name is...?'

#name = gets.chomp

#if name == name.capitalize
	puts 'Please take a seat, ' + name + '.'
#else
#	puts name + '? You mean ' + name.capitalize + ' , right?'
#	puts 'Don\'t you even know how to spell your name??'
#	reply = gets.chomp
#	if reply.downcase == 'yes'
#		puts 'Hmmph! Well, sit down!'
#	else
#		puts 'GET OUT!'
#	end
#end

#input = ''

#while input != 'bye'
#	puts input
#	input = gets.chomp
#end

#puts 'Come again soon!'

#while true
#	input = gets.chomp
#	puts input
#	if input == 'bye'
#		break
#	end
#end

#puts 'Come again soon!'

#puts 'Hello, what\'s your name?'
#name = gets.chomp

#if name == 'Chris' || name == 'Katy'
#	puts 'Yay'
#end

i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris && i_like_beer
puts i_am_chris && i_eat_rocks

#while true 
#	puts 'What would you like to ask C to do?'
#	request = gets.chomp

#	puts 'You say "c,plase' + request + '"'
#	puts 'C\'s response:'
#	puts '"C ' + request + '."'
#	puts '"Papa ' + request + ', too."'
#	puts
#	if request == 'stop'
#		break
#	end
#end

# Deaf Grandma Problem

#	puts "Say something to grandma!"
#	response = gets.chomp

#while true

#	if response = "BYE" 
#		puts "BYE SONNY"
#		break
#	end

#	if response = response.upcase
#		year = 1930 + rand(21).to_i
#		puts "NO, NOT SINCE " + year.to_s + "!"
#	else
#		puts "HUH? SPEAK UP, SONNY!"
#		response = gets.chomp
##end

#	puts "Say something to Grandma"


#<<<<<<<<<<<<<<### Grandma Proble Solution COME BACK TO THIS>>>>>>>

#while true
#	response = gets.chomp

#	if response == "BYE"
#		puts "BYE SONNY"
#	break
#	end

#	if response == response.upcase
#		year = 1930 + rand(21)
#		puts "NOT SINCE " + year.to_s + "!"
#	else
#		puts "I CANT HEAR YOU SONNY!"
#	end
#end



#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Chapter 8 Arrays and Iterators

#names = ['ada', 'Belle', 'Chris']

#puts names
#puts
#puts names [0]
#puts names [4]

languages = ['English', 'Norwegian', 'Ruby']
	languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end


2.times do 
	puts '...you can say that again...'
end

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join( ' , ')
puts
puts foods.join(' :) ') + '  8)'

200.times do 
	puts []
end

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length


# grandma problem again
puts "say something to grandma"
response = gets.chomp

while response != "BYE"
	if response != response.upcase
		puts "WHATS THAT, SONNY?"
		response = gets.chomp
	elsif response = response.upcase
		puts "Not Since " + (1930 + rand(21)).to_s
		response = gets.chomp
	end
end

























































