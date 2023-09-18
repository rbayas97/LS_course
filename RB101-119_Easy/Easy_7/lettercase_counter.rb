# Problem: Write a method that returns a hash containing three entries. Number of 
#          characters in the input string that are lowercase letters, uppercase letters,
#          and neither. 

# Input:  String
# Output: Hash containing 3 key,value pairs

# Requirements
#      - Explicit:
#          - Must return hash containing 3 entries.
#          - Count of lowercase, uppercase, characters and count of characters that are
#            neither.
#      - Implicit:
#          - An empty string should return a hash with zero as all three values in the 
#            hash 
#          - A space within the string should be counted as `neither`
#          - Numbers and symbols in the string should be counted as `neither`

# Data Structure/ Algorithm
#      - Create a variable named `letter_counter` and assign it to an empty hash
#      - Create a variable named `lowercase_letters` and assign it to an array
#        of lowercase letters
#      - Create a variable named `uppercase_letters` and assign it to an array
#        of uppercase letters
#      - Use #count to see how many characters are specified in lowercase_letters
#         - The return value of this will be the key. Set it with letter_counter[]
#      - Use #count to determine how many characters are specified in uppercase_letters
#         - The return value of this will be the key. Set it with letter_counter[]
#      - Subtract the sring_length to the addition of lower_case value + uppercase_value
#        to get the value of neither.
#         - Use this return value as the key. Set it with letter_counter[] 

