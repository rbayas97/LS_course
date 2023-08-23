PEDAC Process Intro Lesson 4

Problem: Given a string, write a method `palindrome_substrings` which returns all the substrings from a given string which are palindromes. Consider palindrome words csae sensitive. 

  input: string
  output: array of substrings from string that are palindromes 

  rules:
        Explicit requirements:
          - Palindromes are case sensitive
        Implicit requirements: 
          - Empty string results in empty array.
          - no substring palindromes in string results in empty array


Algorithm:
  - initialize a result variable to an empty array
  - create an array named substring_arr that contains all of the substrings of the input string that are at least 2 characters long.
  - loop through the words in the substring_arr array.
  - if the word is a palindrome, append it to the result array
  - return the result array


  