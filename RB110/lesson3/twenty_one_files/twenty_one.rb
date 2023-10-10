def display_card(num)
  spaces = num.to_s.length == 1 ? 4 : 3
  puts '+---------+'
  puts '|         |'
  puts '|         |'
  puts "|    #{num}" + ' ' * spaces + '|'
  puts '|         |'
  puts '|         |'
  puts '+---------+'
end 

print display_card('K'), display_card(10)