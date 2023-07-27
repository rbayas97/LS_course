print "Please write word or multiple words: "
word = gets.chomp

word_characters = word.delete(" ").length
puts "There are #{word_characters} characters in '#{word}'."