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


def letter_case_count(string)
  letter_case_count_hash = {}

  letter_case_count_hash[:lowercase] = string.count('a-z')
  letter_case_count_hash[:uppercase] = string.count('A-Z')
  letter_case_count_hash[:neither] = string.length - letter_case_count_hash[:lowercase] - letter_case_count_hash[:uppercase]

  letter_case_count_hash
end 


p letter_case_count('abCdef 123')  == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef')  == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123')  == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('')  == { lowercase: 0, uppercase: 0, neither: 0 }

