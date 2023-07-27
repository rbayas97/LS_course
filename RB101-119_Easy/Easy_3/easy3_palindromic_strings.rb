# def palindrome?(word)
#   reversed_word = word.split("").reverse.join
#   word == reversed_word
# end 


# puts palindrome?('madam') 
# puts palindrome?('Madam')
# puts palindrome?("madam i'm adam") 
# puts palindrome?('356653')


def real_palindrome?(word)
  downcase_word = word.downcase.delete('^a-z0-9')
  puts downcase_word
  reversed_word = downcase_word.reverse 
  downcase_word == reversed_word
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')          # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") # (only alphanumerics matter)
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')