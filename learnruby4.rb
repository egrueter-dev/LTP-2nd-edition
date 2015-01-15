# favorites = []
# favorites.push 'raindrops'
# favorites.push 'kittens'
# favorites.pop
# puts favorites
# puts favorites.length


#Array Challenges

#1 Alphabetical order
array = []  

while
  input = gets.chomp.to_s
  array << input
  if input == ''
    puts array.sort
    break
  end
end
