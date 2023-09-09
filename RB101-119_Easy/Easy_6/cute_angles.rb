# Problem:  Write a method that takes a floating point number as an argument
#           (which represents an angle)and returns a String that represents that
#           angle in degrees, minutes and seconds 


# Input:  A floating point number
# Output: A string representing the input in degrees, minutes, and seconds


# Requirements:
#        - Explicit: 
#             - In our output string, should use a degree symbol to represent degrees
#               single quote for minutes, and double quotes for seconds
#             - Input will be a floating point number
#             - A degree has 60 minutes, a minute has 60 seconds
#             - Output may be different but should be within second or two of result shown
#             - Formatting numbers (two digit numbers with leading zeros for min and sec)
#        - Implicit: 
#             - Our final return value should be a string starting with "%(d, m', s")


# Data Structure/ Algorithm
#        - Create a constant named `DEGREE` and reference string provided for degree symbol
#        - Create a variable named 'formated_angle' and assign it to a string starting with
#          '%()'. We will input our formatted degrees in between the parentheses
#        - Create a variable named d_min_second_int and set it to an empty string 
#        - To get the degrees of floating number round down using .floor method to get the
#          number before the decimal point. Same rule if no decimal in input
#             - save this return value as degree_num
#        - subtract input num from degree_num and multiply by 60 to get minutes floating number 
#        - To get the minutes of floating minute number round down using .floor method to 
#          get the number before the decimal point. Same rule if no decimal in input
#             - save this return value as minute_num
#        - Subtract minute_num from floating_minute_num and multiply by 60 for seconds 
#        - Formatting minutes and numbers 
#             - use .sprinttf to format the minutes and seconds 
#        - For final format use string interpolation `formatted_angle` 
#             = formated_angle + "#{degree_num}#{DEGREE}#{minute_num}'#{second_num}")
#        - Leave this as the last line to return the string. 


# Mathematical Logic
#     1 degree = 60 minutes  |   1 minute = 60 seconds    |    1 degree = 3600 seconds
#     1/60 degree = 1 minute |   1/60 minute = 1 second   |    1/3600 degree = 1 second 
#     .73 degree = ? minutes 

        # 60 minutes  x   .73 degrees   = 43.8 degree* min   =    43.8 min   *  60 sec
        # 1  degree                         1 degree                             1 min 