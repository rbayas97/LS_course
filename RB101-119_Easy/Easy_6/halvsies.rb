# Problem: Write a method that takes an array as an argument and returns two Arrays
#          (as a pair of nested arrays) that contain the first and second half of the 
#          argument array. If the orginal array has an odd number of elements the middle
#          element should be put in the first array.


# Input:  One array
# Output: Two arrays(nested)


# Requirements
#       - Explicit: 
#            - Return a nested array that contain the first and second half of the input
#              array as two seperate arrays.
#            - If input array has odd number of elements, middle element should be placed
#              in the first array.
#       - Implicit:
#            - If input array only has one element, return value should be a nested array
#              with the second array being empty.
#            - If input array has no elements, return value should be a nested array with
#              two empty arrays.

# Data Structure/ Algorithms
#       - Create a variable named `halved_array` and set it to an empty array.
#       - We will need to split the array with slice method
#       - Create a varible named `middle_point` and set it equal to the return value of
#         array.length/2
#       - Create an if codition to address whether the array is odd length
#          - If the array is odd length
#              - Slice the array with slice.(0,middle_point + 1)
#                 - #slice will return an array append this to halved_array
#              - To get the next half slice(middle_point, arr.length)
#                 - append this to halved_array
#          - Else 
#              - Slice the array with slice(0, middle_point)
#                   - Append this return value to halved_array
#              - Slice the array with slice(middle_point, arr.length)
#                   - Append this return value to halved_array
#       - Return halved_array


def halvsies(arr)
  halved_arr = []
  middle_point = arr.length / 2

  if arr.length.odd?
    halved_arr << arr.slice(0, middle_point + 1)
    halved_arr << arr.slice(middle_point + 1, arr.length)
  else 
    halved_arr << arr.slice(0,middle_point)
    halved_arr << arr.slice(middle_point, arr.length)
  end 

  p halved_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]