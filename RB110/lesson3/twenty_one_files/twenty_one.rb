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
         'A' => 11}


def display_card(card1, card2)
  spaces = card1.to_s.length == 1 ? 3 : 2
  spaces_2 = card2.to_s.length == 1 ? 3 : 2
  puts '+-------+'                        + ' ' +  '+-------+'  
  puts '|       |'                        + ' ' +  '|       |'
  puts "|   #{card1}" + ' ' * spaces +'|' + ' ' +  "|   #{card2}" + ' ' * spaces_2 + '|'
  puts '|       |'                        + ' ' +  '|       |'                       
  puts '+-------+'                        + ' ' +  '+-------+'  
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

def determine_ace_value(total, ace)
  if total + DECK_VALUES[ace] <= 21
    ace = 11
  else 
    ace = 1
  end 
end 
    
def calculate_hand(player_cards)
  total = 0
  player_cards.each do |card|
    if card == 'A'
      ace_value = determine_ace_value(total, card)
      total += ace_value
    else 
      total += DECK_VALUES[card]
    end 
  end
  total
end

def ask_to_hit_or_stay(total)
  puts "Your hand is #{total}"
  puts "Hit or Stay?"
  gets.chomp.downcase
end 

def ask_to_play_again
  puts "Play again? (y or n)"
  answer = gets.chomp
end 

loop do 
  playing_deck = initialize_deck
  puts "Would you like to play?"
  user_cards = draw_initial_hand!(playing_deck)
  dealer_cards = draw_initial_hand!(playing_deck)

  puts "Your Hand:"
  display_card(user_cards[0], user_cards[1])
  puts "Dealer Hand:"
  display_card(dealer_cards[0], '?')


  user_hand_total = 0
  dealer_hand_total = 0
  player_bust = false
  loop do
    user_hand_total = calculate_hand(user_cards)
    if user_hand_total <= 21
      answer = ask_to_hit_or_stay(user_hand_total)
      if answer == 'hit'
        draw_next_card!(playing_deck, user_cards)
      elsif answer == 'stay'
        break
      else 
        puts 'Wrong choice. Please enter Hit or Stay?'
      end 
    else 
      puts 'BUST! You went over 21!'
      player_bust = true
      break
    end
  end

  if player_bust == true
    play_another_game = ask_to_play_again
    break unless play_another_game.downcase.start_with?('y')
    next
  end 

  loop do
    dealer_hand_total = calculate_hand(dealer_cards)
    break if dealer_hand_total >= 17
    draw_next_card!(playing_deck, dealer_cards)
  end 
  p dealer_cards
  
  play_another_game = ask_to_play_again
  break unless play_another_game.downcase.start_with?('y')
end 


