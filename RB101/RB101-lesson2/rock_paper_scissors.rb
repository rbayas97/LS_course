VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICES_HASH = { r: 'rock',
                       p: 'paper',
                       sc: 'scissors',
                       l: 'lizard',
                       sp: 'sp' }

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock' && second == 'scissors')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def count_player_score(player, computer)
  if win?(player, computer)
    1
  else
    0
  end
end

def count_computer_score(player, computer)
  if win?(computer, player)
    1
  else
    0
  end
end

def determine_champion(player_score)
  if player_score == 3
    prompt("You are the RPSLS Champion!")
  else
    prompt("The computer is the RPSLS Champion!")
  end
end

loop do
  player_score = 0
  computer_score = 0

  loop do
    choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_result(choice, computer_choice)

    player_score += count_player_score(choice, computer_choice)
    computer_score += count_computer_score(choice, computer_choice)

    prompt("Your score: #{player_score}, Computer Score: #{computer_score}")

    next unless player_score == 3 || computer_score == 3

    determine_champion(player_score)
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
