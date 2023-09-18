# Problem: Write a method that takes two arrays (of the same length) as arguments and 
#          returns a new array that contains all elements from both arrays in alternation.

# Input:  Two arrays (same length)
# Output: One array with combined elements from input arrays in alternating format

# Requirements:
#        - Explicit:
#            - Both input array are non-empty and have the same number of elements
#            - Return array will have elements taken in alternation
#            - Return array must have the total number of elements if the 2 input 
#              arrays were added together.
#        - Implicit:
#            - None for this problem

# Data Structure/ Algorithm
#        - Create a variable named `combined` and set it to an empty array.
#        - Create a variable named `counter` and set it to the integer 0
#        - Create a loop that will continue until the counter is equal to the 
#          length of the array. We can do this becasue the 2 arrays will be the same
#          length.
#        - Append the first element of the first array to 'combined' using Array#<< 
#        - Append the first element of the second array to `combined` using Array#<<
#        - Increment the counter by 1
#        - Loop ends after condition in step 3 is met
#        - Return `combined` array 


def interleave(arr1, arr2)
  combined_arr = []
  counter = 0

  loop do 
    combined_arr << arr1[counter]
    combined_arr << arr2[counter]
    counter += 1
    break if counter == arr1.length
  end 

  combined_arr
end 

def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
