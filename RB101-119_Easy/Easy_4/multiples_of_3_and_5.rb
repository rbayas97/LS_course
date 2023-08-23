# Input: Integers
# Output: Sum of multiples (3 or 5) that lie between 1 and other number

def multisum(number)
  sum_numbers = []
  while number % 5 > 0 
    number = number / 5 
    sum_numbers << number
  end 

  while number % 3 > 0 
    number = number / 3
    sum_numbers << number
  end 
  sum_numbers.sum
end 


p multisum(5)