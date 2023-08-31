# Problem: Write a method that takes a postive integer or zero and converts it to a string
#          representation. Do not use any conversion methods to achieve this.

# Input: Intger
# Output: String represenetation of the input integer

# Requirements: 
#      - Explicit: 
#            - Can NOT use any methods that convert an integer to a string 
#            - Method take a positive integer or zero
#            - Return a string type
#      - Implicit: 
#            - No negative numbers will be tested.




# Data Structure/ Algorithm
#      -  Create a variable `digit` and set it to an empty
#      -  Take input and divide it by each place value that number contains
#         - This will be based off of the size of the number
#         - Looping mechanism to figure out what place value to divide input
#             - Count down from integer size - 1 to start store in variable 'place value'
#             - new variable 'divisor'. Will reference 10 ** place value
#             - divide input by divisor. store this value in 'digit' array
#             - decrease place value by 1
#             - stop when place value is less than 0 to exit loop.
#      - Create a hash where the keys are the integer, and strings of integer are the value
#      - map the 'digit' array where they will now be conveted to the hash value
#      - join the digit array together
#      - return the string formed by the joined array



def integer_to_string(number)
  digit = []
  counter = 0
  loop_number = number

  loop do 
    loop_number /= 10
    break if loop_number == 0
    counter += 1
  end 
   
  loop do 
    break if counter < 0
    divisor = 10 ** counter
    digit << (number/divisor)
    number = number % divisor
    counter -= 1
  end 
  p digit
end 

integer_to_string(4321)
