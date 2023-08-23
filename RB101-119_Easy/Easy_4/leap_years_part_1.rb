# Problem: Given a year, determine where that year is a leap year.
#          Leap years occur every year divisible by 4 unless year is also 
#          divisible by 100. In this case not a leap year unless divisible by 400

# Input: Year(Integer) greater than 0
# Output: Boolean Value

# Rules:
#      Explicit requirements:
#       - returns a boolean value depending on whether year is leap or not
#       - Leap year is year divisible evenly by 4 unless year is also divisible by 100
#           - If year is divisible by 100 not a leap unless divsible by 400
#      Implicit requirments:
#       - Assume rules works for any year greather than 0 

# Data Structure/ Algorithm
#      - find out mod 4 return value of year
#      - find out mod 100 return value of year
#      - Use conditional to see if they are both equal to zero
#             - if not it is a leap year
#             - if they are both zero must divide year by 400
#                     - if mod 400 is zero it is a leap year
#                     - if not then not a leap year
#       - Return boolean value of this conditional statement 

def leap_year?(year)
  mod4_value = year % 4
  mod100_value = year % 100
  mod400_value = year % 400 

  if mod4_value == 0 && mod100_value != 0
    true
  elsif mod4_value == 0 && mod100_value == 0 
    mod400_value == 0 
  else 
    false 
  end 
end 

p leap_year?(2016) 
p leap_year?(2015) 
p leap_year?(2100) 
p leap_year?(2400) 
p leap_year?(240000) 
p leap_year?(240001) 
p leap_year?(2000)
p leap_year?(1900) 
p leap_year?(1752) 
p leap_year?(1700) 
p leap_year?(1) 
p leap_year?(100) 
p leap_year?(400) 