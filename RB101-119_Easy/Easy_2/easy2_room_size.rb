puts ">> Enter the length of the room in meters:"
length = gets.chomp.to_f

puts ">> Enter the width of the room in meters:"
width = gets.chomp.to_f

area_meters = length * width
area_feet = area_meters * 10.7639

puts ">> The area of the room is #{area_meters} square meters (#{area_feet} square feet)."