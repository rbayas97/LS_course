# Problem: Given a year, return a string beginning with the century number of that year and
#          ends with `st`, `nd`, `rd`, or `th` for the appropriate number

# input: year(integer)
# output: string

# rules:
#      Explicit requirements:
#       - must end with st, nd, rd, or th
#       - new centuries begin in years that end with 01 
#      Implicit requirments: (none for this)

# Data Structure/ Algorithm:
#      - Initialize a century variable to an empty string 
#      - Divide the year by 100. Will give the century. Must add 1 to that result
#         - The remainder of said division will result in whether or not to add one
#             - ex) 201-300 comprise the 2nd century
#      - Convert that integer to string and reassign to century variable 
#      - Century determined will determing the suffix
#         - last two digits of century will determine the suffix.
#         - if century ends with 0 or 4 and above `th` suffix
#         - if century ends with 1:`st`, 2:`nd` 3:`rd`
#      - Append to string the suffix
##     - Return the string 





def century(year)
  century = year / 100
  remainder = year % 100

  if remainder.between?(1, 99)
    century += 1
  else 
    century
  end

  century_string = century.to_s
  last_digit = century_string[-1].to_i
  digit_before_last = century_string[-2].to_i

  if last_digit == 1 && digit_before_last != 1
    century_string << 'st'
  elsif last_digit == 2 && digit_before_last != 1
    century_string << 'nd'
  elsif last_digit == 3 && digit_before_last != 1
    century_string << 'rd'
  else 
    century_string << 'th'
  end
end 

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(1052) == '11th'