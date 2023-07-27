puts "Please enter an integer greater than 0:"
integer = gets.to_i

calculation = ''
loop do   
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  calculation = gets.chomp
  break if calculation == 's' || calculation == 'p'
end 

if calculation == 's'
  sum = 0 
  counter = 1
  while counter <= integer do 
    sum += counter
    counter += 1
  end 
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else
  product = 1 
  counter = 1
  while counter <= integer do 
    product *= counter
    counter += 1
  end
  puts "The product of the integers between 1 and #{integer} is #{product}"
end 