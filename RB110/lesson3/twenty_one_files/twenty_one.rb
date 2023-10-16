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
                'A' => 11 }

def prompt(message)
  puts "=> #{message}"
end

def display_cards(cards)
   cards.each do |card|
    card = "[#{card}]"
    print card
  end 
  puts "\n"
end

def initialize_deck
  deck_count = {}
  DECK_VALUES.each { |card, value| deck_count[card] = [value, 4] }
  deck_count
end

def draw_initial_hand!(deck)
  hand = []
  card = nil
  2.times do
    card = deck.keys.sample
    deck.map { |key, _| deck[key][1] -= 1 if key == card }
    hand << card
  end
  hand
end

def draw_next_card!(deck, player_cards)
  card = deck.keys.sample
  player_cards << card
  deck.map { |key, _| deck[key][1] -= 1 if key == card }
  deck.delete_if { |_, value| value[1] == 0 }
end

def determine_ace_value(total, ace)
  total + DECK_VALUES[ace] <= 21 ? 11 : 1
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
  prompt("Your hand is #{total}")
  prompt("Hit or Stay?")
  gets.chomp.downcase
end

def ask_to_play_again
  prompt("Play again? (y or n)")
  gets.chomp
end

def determine_winner(player_hand_total, computer_hand_total)
  player_difference = 21 - player_hand_total
  computer_difference = 21 - computer_hand_total
  prompt("Your hand: #{player_hand_total}, Dealer hand: #{computer_hand_total}")
  if player_difference < computer_difference
    prompt("You won!")
  elsif computer_difference < player_difference
    prompt("You lost!")
  else
    prompt("It's a draw!")
  end
end

loop do
  playing_deck = initialize_deck
  user_cards = draw_initial_hand!(playing_deck)
  dealer_cards = draw_initial_hand!(playing_deck)

  prompt("Your Hand:")
  display_cards(user_cards)
  prompt("Dealer Hand:")
  display_cards(dealer_cards)

  user_hand_total = 0
  dealer_hand_total = 0
  bust = false

  loop do
    user_hand_total = calculate_hand(user_cards)
    if user_hand_total <= 21
      answer = ask_to_hit_or_stay(user_hand_total)
      if answer == 'hit'
        draw_next_card!(playing_deck, user_cards)
      elsif answer == 'stay'
        break
      else
        prompt('Wrong choice. Please enter Hit or Stay?')
      end
    else
      prompt('BUST! You went over 21!')
      bust = true
      break
    end
    display_cards(user_cards)
  end
  if bust == true
    play_again_response = ask_to_play_again
    break unless play_again_response.downcase.start_with?('y')
    next
  end

  bust = false
  prompt('The dealer is making his moves...')

  loop do
    dealer_hand_total = calculate_hand(dealer_cards)
    if dealer_hand_total >= 17 && dealer_hand_total <= 21
      prompt('The dealer decides to stay. Time to reveal who won.')
      break
    elsif dealer_hand_total > 21
      bust = true
      prompt('The dealer bust! You win!')
      break
    else
      prompt('The dealer is going to draw another card.')
      draw_next_card!(playing_deck, dealer_cards)
    end
  end

  if bust == true
    play_again_response = ask_to_play_again
    break unless play_again_response.downcase.start_with?('y')
    next
  end

  determine_winner(user_hand_total, dealer_hand_total)

  play_again_response = ask_to_play_again
  break unless play_again_response.downcase.start_with?('y')
end
