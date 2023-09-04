# Problem: Time of day can be represented as a number before or after midnight. Positive
#          time is after midnight, negative before midnight. Write a method that take a 
#          time using this minute format and return time in 24 hour format (hh:mm)


# Input:  Integer, positive or negative
# Output: String with time of input in 24 hour format (hh:mm)


# Requirements:
#      - Explicit: 
#             - Can NOT use ruby Date and Time classes
#             - Method should work with any input integer
#             - Must return a string in 24 hour format (hh:mm)
#             - Disregard daylight savings and standard time and other complications
#             - 0 should return "00:00"
#      - Implicit
#             - None for this problem 



# Thinking through looking at test cases
#      - -3 would be 23:57 meaning -1 starts at 23:59,  +1 would start at 00:01
#      - 60 minutes input is 1 hour. 60 * 24 = 1440 
#      - meaning if input is more than 1440  we would have to start from 1 hour again
#      - for 3000 minutes. 3000/60 = 50 hours. 24 + 24 = 48. 48 would be 0 + 2 = 2:00
#      - for 800 minutes 800/60 = 13.3 repeating k



# Data Structure/ Algorithm
#      - Create variable named `hh_mm_time` and set it equal to an empty string
#      - Create a variable name hh and set it equal to zero
#      - Create a variable name mm and set it equal to zero
#      - Take the input number and find the quotient / remainder (use divmod method)
#      - 24 hrs would loop back to zero if quotient is more than 24
#         - Set counter to quotient value
#         - Increase hh by 1 and reset to 0 if hh is 24 and lower counter by 1 until counter == 0 
#           - This should give you the hour 
#      - Set 'mm' to reference the remainder
#      - If input number is negative
#         - mm set to remainder
#         - set counter to quotient
#         - increase hh by 1 and reset to zero if counter is 24. Loop until counter is 0 
#      - Convert `mm` and `hh` to strings
#      - string intropolation and add a ':' in between
#      - Return the string. 