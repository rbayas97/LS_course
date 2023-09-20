# Problem: Write a method that take a single String as an argument and returns a new string
#          that contains the original value of the string with the first character
#          of every word capitalized and the other characters lowercase


# Input:  Single string of words
# Output: New String with every first character in the word capitalized and the rest lowecase


# Requirements
#      - Explicit
#          - Words are any sequence of non-blank characters
#          - Must return a new string of same input value with each word being capitalized.
#          - Other than the first character all other characters in each word must be lowercase
#                - Any other characters that are capitalized that are not the first 
#                  character of the word in the input should be converted to lowercase.
#      - Implicit
#          - A word must begin with an alphabetic letter to be capitalized.
#                - a word that starts with something other than a letter will remain
#                  the same in the final new string.
#          - Spacing between words must be kept the same.


# Data Structure/ Algorithm
#       - Split the word up by using the method string.split This creates an array
#         Save the array to a variable string_arr
#       - Itereate through string_arr and for each word (use map to transform the array)
#             - call the sting.downcase! method to ensure all letters will be downcase
#               initially. 
#             - Conditional Check
#                  - If the first character in the string is a letter(a-z)
#                     - apply the capitalize method (use unless here)
#      - Join the string array together with space seperator to maintain the same value.
#      - Joining will return a new string as the output requires.


def word_cap(str)
  string_arr = str.split

  string_arr.map do |word|
    word.downcase!
    word.capitalize! if ('a'..'z').include?(word[0])
    word
  end.join(' ')
  
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'