# 1. Initialize deck
# 2. Deal cards to playerand dealer
# 3. Player: hit or stay
#    - Repeat until bust or 'stay'
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#    - Repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.



DECK_VALUES = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 
         9 => 9, 10 => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
         'A' => 1}


def display_card(num1, num2)
  spaces = num1.to_s.length == 1 ? 3 : 2
  spaces_2 = num2.to_s.length == 1 ? 3 : 2
  puts '+--------+'                       + ' ' +  '+--------+'  
  puts '|        |'                       + ' ' +  '|        |'
  puts '|        |'                       + ' ' +  '|        |'
  puts "|    #{num1}" + ' ' * spaces + '|'+ ' ' +  "|    #{num2}" + ' ' * spaces_2 + '|'
  puts '|        |'                       + ' ' +  '|        |'
  puts '|        |'                       + ' ' +  '|        |'
  puts '+--------+'                       + ' ' +  '+--------+'  
end

def initialize_deck
  deck_count = {}
  DECK_VALUES.each { |card, value| deck_count[card] = [value, 4] }
  deck_count 
end

def draw_initial_hand!(cards)
  hand = []
  card = nil
  2.times do 
    card = cards.keys.sample
    cards.map { |key, value| cards[key][1] -= 1 if key == card }
    hand << card
  end 
  hand 
end 

# Must implement draw_initial_hand to subtract from deck when intial hand is drawn based off
# the cards the player and ai received. 

playing_deck = initialize_deck
player_cards = draw_initial_hand!(playing_deck)
computer_cards = draw_initial_hand!(playing_deck)

display_card(player_cards[0], player_cards[1])
display_card(computer_cards[0], computer_cards[1])

p playing_deck


