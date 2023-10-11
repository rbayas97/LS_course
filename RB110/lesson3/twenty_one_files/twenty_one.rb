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
         9 => 9, 10 => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
         'A' => 1}


def display_card(card1, card2)
  spaces = card1.to_s.length == 1 ? 3 : 2
  spaces_2 = card2.to_s.length == 1 ? 3 : 2
  puts '+--------+'                       + ' ' +  '+--------+'  
  puts '|        |'                       + ' ' +  '|        |'
  puts '|        |'                       + ' ' +  '|        |'
  puts "|    #{card1}" + ' ' * spaces + '|'+ ' ' +  "|    #{card2}" + ' ' * spaces_2 + '|'
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

def draw_next_card!(deck, player_cards)
  card = deck.keys.sample
  player_cards << card
  deck.map { |key, value| deck[key][1] -= 1 if key == card }
end

def determine_ace_value(total, current_hand)
  if total < 21 && current_hand.count('A') == 1 
    ace = 11
  else 
    ace = 1
  end 
end 
    
def calculate_hand(player_cards)
  total = 0
  player_cards.each do |card|
    if card == 'A'
      ace_value = determine_ace_value(total, player_cards)
      total += ace_value
    else 
      total += DECK_VALUES[card]
    end 
  end
  total
end

playing_deck = initialize_deck
user_cards = draw_initial_hand!(playing_deck)
computer_cards = draw_initial_hand!(playing_deck)

display_card(user_cards[0], user_cards[1])
display_card(computer_cards[0], '?')

user_hand_total = calculate_hand(user_cards)

loop do 
  if user_hand_total < 21
    puts "Your current hand is #{user_hand_total}"
    puts 'Hit or Stay?'
    answer = gets.chomp.downcase
    if answer == 'hit'
      draw_next_card!(playing_deck, user_cards)
      p user_cards
    elsif answer == 'stay'
      break
    else 
      puts 'Wrong choice. Please enter Hit or Stay'
    end 
  else 
    puts 'BUST! You went over 21!'
    break
  end 
end 






