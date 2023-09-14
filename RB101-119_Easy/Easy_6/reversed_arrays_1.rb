# Problem: Write a method that takes an array as an argument and reverses the elements in 
#          place. The return value should be the same Array object.


# Input:  Array
# Output: Same Array with elements reversed 

# Requirements:
#     - Explicit: 
#           - Can NOT use Array#reverse or Array#reverse!
#           - Must return the same Array object used as the argument(mutation).
#           - Must reverse the elements in the array.
#     - Implicit:
#           - Empty array returns an empty array.
#           - array with one element will return the same array.
#               - We want to reverse the elements in the array not the objects in each
#                 element (if the object is a string, or a collection).


# Data Structure/ Algorithm
#     - Create a variable called `index_from_left` and assign it to 0
#     - Create a variable called `index_from_right` and assignt it to arr.length -1
#     - Create a loop that will go through the array
#       - The loop will end when `index_from_left is greater than `index_from_right.
#     - reassign (swap) array values so that arr[index_from_left] is now assigned to
#       the value of the element at index_from_right and vice versa.
#     - Continue this until the condition is true.
#     - This array should be mutated as as setter methods are mutating. 


def reverse!(arr)
   index_from_left = 0 
   index_from_right = arr.length - 1 

   loop do
    break if (index_from_left) > (index_from_right)
    arr[index_from_left], arr[index_from_right] = arr[index_from_right], arr[index_from_left]
    index_from_left += 1
    index_from_right -= 1
  end

  p arr
end 

list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

