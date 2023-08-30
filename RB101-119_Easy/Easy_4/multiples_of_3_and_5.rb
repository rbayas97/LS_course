# Problem: Given a number create a method that seaarches for all multiples of 3 and 5
#          that lie between 1 and given number. Computer the sum of those multiples

# Input: Number(integer)
# Output: sum of all multiples of 3 or 5 that lie between 1 and input number


# Rules:
#      Explicit Requirments: 
#        - Returns sum of all multiples 3 or 5 
#        - Number passed in as an argument is greater than 1
#      Implicit Requirements: 
#        -  Multiple of both 3 and 5 only count once.
#        -  Can include argument as multiple if applicable. 


# Data Structure/ Algorithm 
#      - Create an multiples_array that will hold multiples of 3 or 5
#      - Create two `multiple` variables 3 and 5
#      - Create loop that will go up to said argument
#         - if `multiple` variables is less than argument add to multiples_array
#         - add 3 and 5 respectively to `multiples` variable
#         - start with 3 first than 5
#         - if number is already included in `multiples_array` skip to next
#      - add up the multiples_array total
#      - return the sum


def multisum(number)
  multiples_array = []
  multiples_3 = 3
  multiples_5 = 5

  loop do 
    if multiples_3 <= number
      multiples_array << multiples_3
      multiples_3 += 3 
    elsif multiples_5 <= number
      multiples_array << multiples_5 if !(multiples_array.include?(multiples_5))
      multiples_5 += 5
    else 
      break 
    end
  end 
  multiples_array.sum
end 
