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

#
# class Integer
#   def to_fact
#     int = self
#     while int > 0
#       number = int * int
#       puts number
#       int -= 1
#     end
#   end
# end
#
# 8.to_fact


#Creating a new class:

# class Die
#
#   def roll
#     1 + rand(6)
#   end
# end
#
# dice = [Die.new, Die.new]
#
# dice.each do |die|
#   puts die.roll
# end

#Instance Variables:
#
# class Die
#   def initialize
#     #creates the die out of thin air, you must roll to get a
#     #value
#   end
#
#   def cheat
#       puts "Ye chose to burn in hell"
#       @number_showing = gets.chomp.to_i
#       if @number_showing > 6
#         puts "ye cannot bend the rules of logic"
#       end
#   end
#
#   def roll
#     @number_showing = 1 + rand(6)
#   end
#
#   def showing
#     @number_showing
#   end
# end
#
# die = Die.new
# die.cheat


#Baby Dragon
#
# class Dragon
#
#   def initialize name
#     @name = name
#     @asleep = false
#     @stuff_in_belly     = 10 #he's full
#     @stiff_in_intestine = 0 # he dosen't need to go
#
#     puts "#{@name} is born"
#   end
#
#   def feed
#     puts "You feed #{@name}"
#     @stuff_in_belly = 10
#     passage_of_time
#   end
#
#   def walk
#     puts "You walk #{@name}"
#     @stuff_in_intestine = 0
#     passage_of_time
#   end
#
#   def put_to_bed
#     puts "You put #{@name} to bed"
#     @asleep = true
#     3.times do
#       if @asleep
#         passage_of_time
#       end
#       if @asleep
#         puts "#{@name} snores, filling the room with smoke."
#       end
#     end
#     if @asleep
#       @asleep = false
#       puts "#{@name} wakes up slowly."
#     end
#   end
#
#   def toss
#     puts "you toss #{@name} up into the air"
#     puts 'He giggles, which singes your eyebrows'
#     passage_of_time
#   end
#
#   def rock
#     puts "You rock #{@name} gently."
#     @asleep = true
#     puts "he briefly doses off..."
#     passage_of_time
#     if @asleep
#       @asleep = false
#       puts '...but wakes when you stop.'
#     end
#   end
#
#   private #private methods cannot be called on the obj
#
#   def hungry?
#     @stuff_in_belly <= 2
#   end
#
#   def poopy?
#     @stuff_in_belly >= 8
#   end
#
#   def passage_of_time
#     if @stuff_in_belly > 0
#       #move food from belly to intestine
#       @stuff_in_belly     = @stuff_in_belly     - 1
#       @stuff_in_intestine = @stuff_in_intestine.to_i - 1 #not sure why that is needed...
#     else
#       if @asleep
#         @asleep = false
#         puts "He Wakes Up Suddenly"
#       end
#       puts "#{@name} is starving in desperation, he ate YOU!"
#       exit
#     end
#
#     if @stuff_in_intestine >= 10
#       @stuff_in_intestine = 0
#       puts "Whoops! #{@name} had an accident..."
#     end
#
#     if hungry?
#       if @asleep
#         @asleep = false
#         puts 'He wakes up suddenly!'
#       end
#       puts "#{@name}'s stomach grumbles.."
#     end
#
#     if poopy?
#       if @asleep
#         @asleep = false
#         puts 'he wakes up suddenly'
#       end
#       puts "#{@name} does the potty dance!"
#     end
# end
# end
#
# pet = Dragon.new 'Norbert'
# pet.feed
# pet.toss
# pet.walk
# pet.put_to_bed
# pet.rock
# pet.put_to_bed
# pet.put_to_bed
# pet.put_to_bed
# pet.put_to_bed
#

#additional challenges

#Orange Tree Challenge
#
# class OrangeTree
#   def initialize
#     @height = 1
#     @age = 0
#     @oranges = 0
#     puts "A new orange tree has sprouted"
#   end
#
#   def one_year_passes
#     @age = @age + 1
#     @height = @height + 1
#     if @age < 4
#        @oranges = @oranges + 1
#     elsif @age > 4
#        @oranges = @oranges + 10
#     elsif @age > 10
#       puts "orange tree has died :("
#       exit
#     end
#   end
#
#   def height
#     puts "The height of the tree is #{@height}"
#   end
#
#   def pick_an_orange(picks)
#     @oranges = @oranges - picks.to_i
#     puts "You picked #{picks} oranges off the tree"
#     if @oranges == 0
#       puts "You ate all the oranges"
#     end
#   end
#
#   def count_the_oranges
#       puts "The number of oranges is #{@oranges}"
#   end
#
# end
#
# happy_tree = OrangeTree.new
# 7.times do happy_tree.one_year_passes end
# happy_tree.height
# happy_tree.count_the_oranges
# happy_tree.pick_an_orange(10)
# happy_tree.count_the_oranges

#interactive baby dragon
