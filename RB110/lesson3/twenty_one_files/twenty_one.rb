# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player: hit or stay
#    - Repeat until bust or 'stay'
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#    - Repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.



DECK_VALUES = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 
         9 => 9, 10 => 10, 'J' => 'J', 'Q' => 'Q', 'K' => 'K',
         'A' => 'A'}


def display_card(num1, num2)
  spaces = num1.to_s.length == 1 ? 3 : 2
  spaces_2 = num2.to_s.length == 1 ? 3 : 2
  puts '+--------+'                       + ' ' +  '+--------+'  
  puts '|        |'                       + ' ' +  '|        |'
  puts '|        |'                       + ' ' +  '|        |'
  puts "|    #{num1}" + ' ' * spaces + '|' + ' ' +  "|    #{num2}" + ' ' * spaces_2 + '|'
  puts '|        |'                       + ' ' +  '|        |'
  puts '|        |'                       + ' ' +  '|        |'
  puts '+--------+'                       + ' ' +  '+--------+'  
end

def initialize_deck
  deck_count = {}
  DECK_VALUES.each { |card, value| deck_count[card] = [value, 4] }
  deck_count 
end

playing_deck = initialize_deck
display_card(playing_deck.keys.sample, playing_deck.keys.sample)

