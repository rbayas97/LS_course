# Problem: Given a string write a method that uses this  string as an argument and returns
#          a new string that contains the value of the original sring with all 
#          consecutive duplicate characters collapsed into a single character

# Input:  String
# Output: A new string that contains the value of the original string with all
#         consequtive characters collapsed into a single character.


# Requirements:
#       - Explicit:
#            - Do not use String#squeeze or String#squeeze! for your solution
#            - no consecutive duplicate characters in the return string
#            - string returned should be a new string, not the original string
#       - Implicit:
#            - An empty input string should return an empty string
#            - numbers/ (punctuation?) should follow the same rules. Will count as 
#              characters
#            - spaces must be maintained



# Data Structure/ algorithm
#       - Create a variable `no_double` and assign it to an empty string
#       - take the input string and split it using the split method.
#       - For each word take each character in the string. will have to loop through each
#         character in the word. 
#       - if the character is not the same as the next character add that character to 
#         `no_double`
#       - return `no_double`




def crunch(string)
  removed_duplicates = ''
  string_arr = string.split('')
  
  string_arr.each_with_index do |letter, index|
    if letter != string_arr[index + 1]
      removed_duplicates << letter
    end 
  end   
  removed_duplicates
end 

p crunch('ddaaiillyy ddoouubbllee') 
p crunch('4444abcabccba') 
p crunch('ggggggggggggggg')
p crunch('a') 
p crunch('') 
