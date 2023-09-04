# Problem: Given a string that consists of some words, write a method that returns all
#          non-alphabetic characters replaced by spaces. One or more non-alphabetic 
#          characters in a row should only have one space in result. No consecutive spaces



# input:  string consisting of words and non-alphabetic characters
# output: string with only the words and 1 one space for every encounter of non-alphabetic
#         character unless there are consecutive


# Requirements:
#      - Explicit: 
#            - words are all lowercase
#            - return input string with non-alphabetic characters replaced by spaces
#                - Only one space for consecutive non-alphabetic characters
#            - No consecutive spaces in return string 
#      - Implicit: 
#            - None for this problem



# Data Structure/ Algorithm 
#      - create empty string 'cleaned' and set it to empty string
#      - split up the string into an array
#      - Use a conditional 
#          - if the string is a letter
#                - append the leter to  cleaned 
#          - if the string is a non-alphabetic character
#                - use a space and append to cleaned
#      - Create a variable `final_string` set it to empty string
#      - make `cleaned` into array and loop over it
#          - if element is a space and element before it isn't 
#            a space append to `final string`
#      - return final_string 



