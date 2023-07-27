def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

loop do
  prompt('Welcome to the mortgage calculator!')

  loan_amount = ''
  loop do
    prompt('Please enter your loan amount.')
    loan_amount = Kernel.gets.chomp
    break if valid_number?(loan_amount)
    prompt("Error, not a valid number.")
  end

  interest_rate = ''
  loop do
    prompt('Please enter your APR.')
    interest_rate = Kernel.gets.chomp
    break if valid_number?(interest_rate)
    prompt("Error, not a valid number.")
  end

  loan_duration = ''
  loop do
    prompt('Please enter your loan duration (years)')
    loan_duration = Kernel.gets.chomp
    break if valid_number?(loan_duration)
    prompt("Error, not a valid number.")
  end

  monthly_rate = (interest_rate.to_f / 100) / 12
  monthly_duration = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_i * (monthly_rate / (1 - (1 + monthly_rate)**(-monthly_duration)))
  prompt("Your monthly payment will be $#{monthly_payment}")

  prompt("Do you want to perform another calulation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
