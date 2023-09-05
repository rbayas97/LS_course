# Problem: Take a string with one or more sepereated words and return a hash that
#          shows the number of words of different sizes. 

# Input:  String of words
# Output: Hash with key as length of string, and value as number of times that string
#         length appears in the sring.


# Requirements:
#     - Explicit:
#           - return a hash 
#               - key as length of each word of string, value is occurance of word length
#           - words consist of any string that don't unclude a space
#           - Empty string would equal an empty hash
#     - Implicit: 
#           - words with punctaition - punctuation should be included with the word in it's
#             length. 



# Data Structure / Algorithm
#      - create a variable `occurance_hash` and set it to reference and empty hash
#      - split the string by space value and assign it to a variable `str_arr`
#      - capture the length of each word into an array and assign to a variable `length`
#      - Iterate through array of numbers and compare to see the count of how many times
#        the length of the string is equal to the number we are iterating through.
#          - this will be the value
#          - set the number and the value of step above as the value for each key
#      - Return the hash 



def word_sizes(str)
  occurance_hash = {}
  str_arr = str.split

  length = str_arr.map { |word| word.length }
  length.each do |num|
    occurance_hash[num] = str_arr.count { |word| num == word.length } unless occurance_hash.key?(num)
  end

  occurance_hash

end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

