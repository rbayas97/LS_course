print "What is the bill? "
bill = gets.to_f
p bill

print "What is the tip percentage? "
tip_percentage = gets.to_f

tip_amount = bill * (tip_percentage / 100)
total = bill + tip_amount

puts "The tip is $#{tip_amount}"
puts "The total is $#{total}"