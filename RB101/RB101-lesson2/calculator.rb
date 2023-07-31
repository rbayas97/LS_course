# ask the user for two numbers
# ask the user for an operation to perform on the two numbers 
# perform the operation on the two numbers
# output the result 
def prompt(message)
  Kernel.puts("=> #{message}")
end 

def valid_number?(num)
  num.to_i != 0 
end 

prompt("Welcome to Calculator!")

loop do 
  number1 = ''
  loop do 
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp()
    
    if valid_number?(number1)
      break 
    else 
      prompt ("Please enter a valid number")
    end 
  end 

  number2 = ''
  loop do 
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp()
    
    if valid_number?(number2)
      break 
    else
      prompt("Please enter a valid number")
    end 
  end 

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)
  
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break 
    else
      prompt("Must choose 1, 2, 3 or 4")
    end 
  end

  result = case operator
          when '1'
            number1.to_i + number2.to_i
          when '2'
            number1.to_i - number2.to_i
          when '3'
            number1.to_i * number2.to_i
          when '4'
            number1.to_f / number2.to_f
  end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end 

prompt("Thank you for using the calculator. Goodbye!")