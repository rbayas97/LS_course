num_array = []

puts 'Enter the 1st number'
number = gets.to_i
num_array << number

puts 'Enter then 2nd number'
number = gets.to_i
num_array << number

puts 'Enter the 3rd number'
number = gets.to_i
num_array << number

puts 'Enter the 4th number'
number = gets.to_i
num_array << number

puts 'Enter the 5th number'
number = gets.to_i
num_array << number

puts 'Enter the last number'
number = gets.to_i

if num_array.include?(number)
  puts "The number #{number} appears in #{num_array}"
else 
  puts "The number #{number} does not appear in #{num_array}"
end 