# Problem: Write a method that takes two arrays as arguments and returns a new array 
#          containing all the values from both arrays with no duplicate values if both 
#          arrays have the same value.


# Input:  2 arrays
# Output: New array combining the values from both arrays with no duplicates

# Requirements
#      - Explicit:
#          - Must return a new array
#          - New array can't have duplicate values. Value that appears in both arrays
#            should only appear once in the new array.
#          - Two arrays will be used as the arguments.
#      - Implicit:
#          - None for this problem


# Data Structure/ Algorithm
#      - Create a new variable named `combined_arr` and set it to an empty array
#      - Create a new variable named `arguments_combined` and set it to an array
#        containing both arguments. This will create a nested array.
#      - We will now loop through this nested array with each 
#      - First each will loop through the outer array
#      - Second each will loop through the elements of each individual array
#      - Conditional will determine whether or not to push the element to the 
#        `combined_arr`
#          - combined_arr << element unless combined_arr.include?(element)
#      - Each method will get out of the loop after going through both arrays
#      - return the new array 


def merge(arr1, arr2)
  combined_arr = []
  arguments_arrs = [arr1, arr2]

  arguments_arrs.each do |arr|
    arr.each do |element|
      combined_arr << element unless combined_arr.include?(element)
    end 
  end

  combined_arr
end 

p merge([1, 3, 5], [3, 6, 9]) 