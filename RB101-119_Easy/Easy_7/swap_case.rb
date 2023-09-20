#Problem: Write a method that takes a string as an argument and returns a new string
#         where the capitalization of each character in the string are swapped. Lowercase
#         should be uppercase and uppercase lowercase. Any non-alphabetic characters should
#         be unchanged


# Input:  String
# Output: New String with letter capitalization is swapped

# Requirements:
#      - Explicit:
#          - Can not use String#swapcase
#          - Must return a new string
#          - Non-alphabetic characters in string should be unchanged. 
#          - Alphabetic characters capitalization should be swapped based off whether
#            the original character in the input string is lowercase or uppercase
#      - Implicit:
#          - None for this problem


# Data Structure/ Algorithm
#      - Break up the input string using split. This will create an array of words 
#      - For each word loop through each letter in the string. Use map
#      - Use a conditional
#         - If the letter is a lowercase letter, 
#               - Use upcase method to return the capitalized version
#         - else if the letter is an uppercase 
#               - Use downcase method to return the lowercase version
#         - else
#               - just return the character
#      - return the array returned by the map method
#      - join(' ') in order to maintain spacing 
#      - return the string after the join method is invoked


