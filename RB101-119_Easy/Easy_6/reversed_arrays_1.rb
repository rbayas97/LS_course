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
#     - Create a variable called `first_element` and assign it to the first element
#       of the array.
#     - Create a variable called `counter` and assign it to 0.
#     - Create a loop that will go through the array
#       - The loop will end when the 1st element is at the last index.
#     - Create a variable named `popped` and assign it to the return value or list.pop
#     - Use the unshift method and use popped as the argument.
#     - Continue this until the condition is true.
#     - This array should be mutated as pop and unshift are mutating methods



