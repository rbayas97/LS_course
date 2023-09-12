# Problem: Write a method (given an integer as an argument) that will calculate and 
#          return the index of the first Fibonacci number that has the number of digits
#          specified by the argument. 

# Input:  Integer
# Output: Integer that is index of first fib number that has the number of digits specified
#         by the input


# Requirements:
#        - Explicit: 
#             - The argument is always greater than or equal to 2
#             - Fib series first 2 numbers are 1 by definition
#                - Each subsequent number is the sum of previous 2 numbers.
#             - First fib number(1) has an index of 1
#             - Return a number that is the index of first fib number that has the
#               amount of digits specified by the argument.
#        - Implicit:
#             - None for this excercise 


# Data Structure/ Algorithm
#        - Create an variable named fib_series and set it to an array with 2 (1) as
#          elements. 
#        - Create a variable named counter_index1 and set it equal to 0
#        - Create a variable named counter_index2 and set it eqaul to 1
#        - Create a loop that will go thorugh the fib series array and add the element
#          at index 1 with the element at index 2.
#        - Take the result of the addition and append it to fib_series.
#        - The loop will end with a conditional check.
#            -This check will see if the addition return value has a length of the 
#             input argument. We can convert the input to a string and check it's 
#             length to do this. If conditional is true, break. If not continue looping
#            - If the loop continues, add 1 to counter_index1 and counterindex2 
#        - If the loop is broken we then return the index of the fib_series array
#          and add 1 to it. This is the return value of the method.


#