DECK = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 
         9 => 9, 10 => 10, 'Jack' => 'J', 'Queen' => 'Q', 'King' => 'K',
         'Ace' => 'A'}


def display_card(num1, num2)
  spaces = num1.to_s.length == 1 ? 4 : 3
  spaces_2 = num2.to_s.length == 1 ? 4 : 3
  puts '+---------+'                       + '' +  '+---------+'  
  puts '|         |'                       + '' +  '|         |'
  puts '|         |'                       + '' +  '|         |'
  puts "|    #{num1}" + ' ' * spaces + '|' + '' +  "|    #{num2}" + ' ' * spaces_2 + '|'
  puts '|         |'                       + '' +  '|         |'
  puts '|         |'                       + '' +  '|         |'
  puts '+---------+'                       + '' +  '+---------+'  
end 

display_card(DECK[2], DECK[10])
