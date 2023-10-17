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

def determine_round(player_hand_total, computer_hand_total)
  display_end_of_round(player_hand_total, computer_hand_total)
  if player_hand_total > computer_hand_total
    prompt("You won!")
  elsif player_hand_total < computer_hand_total
    prompt("You lost!")
  else
    prompt("It's a draw!")
  end
end

def display_end_of_round(player_info, dealer_info)
  puts "================================"
  puts("Your hand: #{player_info}, Dealer hand: #{dealer_info}")
  puts "================================"
end

def display_score(player_score, dealer_score)
  puts "================================"
  puts("Your score: #{player_score}, Dealer score: #{dealer_score}")
  puts "================================"
end 

def add_point(player1_total, player2_total)
  player1_total > player2_total ? 1 : 0
end

def determine_winner(player_score, dealer_score)
  if player_score == 5 || dealer_score == 5
    if player_score == 5
      puts "========================================"
      prompt ("You won! You beat the dealer 5 times")
      puts "========================================"
    else 
      puts "========================================"
      prompt ("You lost! The dealer beat you 5 times")
      puts "========================================"
    end 
  end 
end

def winner?(player_score, dealer_score)
  player_score == 5 || dealer_score == 5
end 

player_score = 0
dealer_score = 0

loop do
  system 'clear'
  playing_deck = initialize_deck
  user_cards = draw_initial_hand!(playing_deck)
  dealer_cards = draw_initial_hand!(playing_deck)

  display_score(player_score, dealer_score)
  prompt("Your Hand:")
  display_cards(user_cards)
  prompt("Dealer Hand:")
  display_cards([dealer_cards[0], '?'])

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
      dealer_score += 1
      break
    end
    system 'clear'
    display_cards(user_cards)
  end

  if bust == true
    if winner?(player_score, dealer_score)
      determine_winner(player_score, dealer_score)
      break
    else 
      play_again_response = ask_to_play_again
      break unless play_again_response.downcase.start_with?('y')
      next
    end 
  end

  bust = false
  prompt("Time for the dealer to make their moves...")

  loop do
    dealer_hand_total = calculate_hand(dealer_cards)
    if dealer_hand_total >= 17 && dealer_hand_total <= 21
      prompt('The dealer stays. Time to reveal who won.')
      break
    elsif dealer_hand_total > 21
      bust = true
      player_score += 1
      prompt('The dealer bust! You win!')
      break
    else
      prompt('The dealer is going to draw another card.')
      draw_next_card!(playing_deck, dealer_cards)
    end
    display_cards(dealer_cards)
  end

  if bust == true
    if winner?(player_score, dealer_score)
      determine_winner(player_score, dealer_score)
      break
    else
      play_again_response = ask_to_play_again
      break unless play_again_response.downcase.start_with?('y')
      next
    end 
  end

  determine_round(user_hand_total, dealer_hand_total)
  player_score += add_point(user_hand_total, dealer_hand_total)
  dealer_score += add_point(dealer_hand_total, user_hand_total)

  determine_winner(player_score, dealer_score)
  break if winner?(player_score, dealer_score)

  play_again_response = ask_to_play_again
  break unless play_again_response.downcase.start_with?('y')
end
