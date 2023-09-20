# Problem: Write a method that takes a string as an argument and returns a new string that 
#          contains the original value but using staggered capitalization (every other
#          character is capitalized). Non letter should not change but count as characters
#          when swiching between upper and lowercase. 

# Input:  String
# Output: New string with staggered capitalization

# Requirements
#     - Explicit
#         - Return a new string where every other letter is capitalized starting after
#           the first character. (First character should always be capitalized)
#         - Characters that are not letters should not be changed
#         - Characters that are not letters should still count as a character when counting
#           to determine lowercase and uppercase
#     - Implicit
#         - Spaces also count as characters when counting to determine capitalization

# Data Structure/ Algorithm
#     - Create a variable named stag_caps and assign it to an empty string
#     - Split the input string using chars.
#     - Loop through the string with the index. Index will give us the position, allowing
#       us to know what letters to capitalize, and also hold count even when the character
#       is not a letter
#     - Create a conditional 
#        - If index is even capitalize the letter and append it to stag_caps
#        - Else make the letter lowercase and append it to stag_caps
#     - return stag_caps


def staggered_case(str)
  stag_caps = ''
  str.chars.each_with_index do |char, index|
    if index.even?
      stag_caps << char.upcase
    else 
      stag_caps << char.downcase
    end 
  end 

  stag_caps
end 

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'