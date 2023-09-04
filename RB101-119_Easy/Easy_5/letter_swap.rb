# Problem: Given a string of words (space seperated) return this string in which the
#          first and last letters of each word are swapped. 

# Input: string of words
# Output: string of words (each word in string has first and last letter swapped)


# Requirements: 
#       - Explicit: 
#            - Every word contains at least one letter
#            - String will always contain at least one word
#            - Nothing but words and spaces in each string (no punctuation/ numbers/ etc)
#            - Must return a string
#       - Implicit:
#            - Must keep capitalization of letters with swap
#            - spaces must be kept the same position.



# Data Structure/ Algorithm
#       - create a variable `swapped_word` and assign it to an empty string
#       - create a variable `string_array` and assign it to return value of string.split
#       - Loop over the array (each word)
#           - take the first position and assign it to last position with []
#           - take the last letter and assign it to the first position with []
#           - append it to swapped_word
#       - return swapped_word


def swap(str)
  swapped_str = ''
  str_array = str.split(' ')
  p str_array
end 


swap('Oh what a wonderful day it is')