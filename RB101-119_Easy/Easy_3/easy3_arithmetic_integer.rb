puts "==> Enter the first number:"
num1 = gets.to_i

puts "==> Enter the second number:"
num2 = gets.to_i

addition = num1 + num2
subtraction = num1 - num2
product = num1 * num2 
quotient = num1 / num2 
remainder = num1 % num2 
power = num1 ** num2 

puts "==> #{num1} + #{num2} = #{addition}"
puts "==> #{num1} - #{num2} = #{subtraction}"
puts "==> #{num1} * #{num2} = #{product }"
puts "==> #{num1} / #{num2} = #{quotient}"
puts "==> #{num1} % #{num2} = #{remainder}"
puts "==> #{num1} ** #{num2} = #{power}"
