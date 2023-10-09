# Tic Tac Toe

# 1. Display the initial empty 3 x 3 board
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Dislpay the updated board state.
# 5. If winnerm display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + 
                  [[1, 4, 7], [2, 5, 8], [3, 6 ,9]] +
                  [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end 

def display_board(brd)
  system 'clear'
  puts "You are a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end 

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry this is not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = determine_computer_move(brd)
  brd[square] = COMPUTER_MARKER
end

def determine_threats(brd)
  WINNING_LINES.select do |line|
    line.count { |number| brd[number] == PLAYER_MARKER } == 2 && 
    line.count { |number| brd[number] == COMPUTER_MARKER } != 1
  end
end 

def determine_attacks(brd)
  WINNING_LINES.select do |line|
    line.count { |number| brd[number] == COMPUTER_MARKER} == 2 &&
    line.count { |number| brd[number] == PLAYER_MARKER} != 1
  end
end 

def determine_computer_move(brd)
  potential_threat = determine_threats(brd)
  computer_winning_position = determine_attacks(brd)

  if potential_threat.length >= 1 && computer_winning_position.length == 0 
    potential_threat[0].select { |num| brd[num] != PLAYER_MARKER }[0]
  elsif computer_winning_position.length > 0 
    computer_winning_position[0].select { |num| brd[num] != COMPUTER_MARKER }[0]
  elsif brd[5] == ' '
    5
  else 
    empty_squares(brd).sample
  end
end 

def board_full?(brd)
  empty_squares(brd).empty?
end 

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && 
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
        return 'Player'
    elsif 
      brd[line[0]] == COMPUTER_MARKER &&
      brd[line[1]] == COMPUTER_MARKER && 
      brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end  
  end
  nil
end

def joinor(arr, delimiter = ', ', word= 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def determine_winner(player_score)
  if player_score == 5
    prompt "-------------WINNNER!-------------"
    prompt "You won 5 times. The computer is defeated."
  else
    prompt "-------------LOSER!---------------"
    prompt "The computer wone 5 times. You are defeated."
  end 
end

def determine_first_player
  choice = ''
  prompt "Who should go first, you or the computer? Enter 'me' or 'ai':"
  loop do 
    choice = gets.chomp.downcase
    break if choice == 'me' || choice == 'ai'
    prompt "Invalid choice. Enter 'me' or 'ai'"
  end 
  choice 
end

def computer_chooses_first_move
  choice = ['yes', 'no'].sample
  if choice == 'no'
    prompt "The computer wants you to decide who should go first."
  end 
  choice
end 

def place_piece!(brd, player)
  if player == 'me'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end 
end

def alternate_player(player)
  if player == 'me'
    player = 'ai'
  else 
    player = 'me'
  end
end 

player_score = 0
computer_score = 0
loop do
  board = initialize_board
  first_move = if computer_chooses_first_move == 'no'
                 determine_first_player
               else 
                 'ai'
               end
  current_player = first_move

  if first_move == 'me'
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
  else
    loop do
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      display_board(board)
      break if someone_won?(board) || board_full?(board)
    end 
  end 

  display_board(board)

  if someone_won?(board) && detect_winner(board) == 'Player'
    prompt "#{detect_winner(board)} won!"
    player_score += 1
  elsif someone_won?(board) && detect_winner(board) == 'Computer'
    prompt "#{detect_winner(board)} won!"
    computer_score += 1
  else
    prompt "It's a tie!"
  end

  prompt "Player score: #{player_score} Computer score: #{computer_score}"
  if player_score == 5 || computer_score == 5
    determine_winner(player_score)
    break
  else
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end 
end 

prompt "Thanks for playing Tic Tac Toe. Good bye!"
