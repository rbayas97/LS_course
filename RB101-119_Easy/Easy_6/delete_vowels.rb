# Problem: Write a method that takes an array of strings and returns an array of the 
#          same string values without the vowels


# Input:  Array of Strings
# Output: Array of Strings with the vowels removed 


# Requirements:
#      - Explicit: 
#          - Return an array of strings with the vowels removed from each string
#          - Returned array should have same number of elements as the input array
#          - String format should stay the same. Capitalization 
#      - Implicit: 
#          - If string is all vowels, should return an empty string


# Data Structure/ Algorihm
#      - Create a variable `vowels_removed` and set it to an empty array
#      - Loop through the array, and for each string loop through each character
#           - if the character is a vowel append it to the array
#           - if not append an empty space to the array
#      - return the vowels_removed array 



def remove_vowels(arr)
  arr.map do |word|
    non_vowel_string = ''
    word.chars.each do |char|
      non_vowel_string << char unless ('AEIOUaeiou').include?(char)
    end

    non_vowel_string
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))  == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))  == ['BC', '', 'XYZ']