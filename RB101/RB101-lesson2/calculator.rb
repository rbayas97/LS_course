# ask the user for two numbers
# ask the user for an operation to perform on the two numbers 
# perform the operation on the two numbers
# output the result 
def prompt(message)
  Kernel.puts("=> #{message}")
end 

prompt("Welcome to Calculator!")

prompt("What is the first number?")
number1 = Kernel.gets().chomp()

prompt("What is the second number?")
number2 = Kernel.gets().chomp()

prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else 
  result = number1.to_f() / number2.to_f()
end 

prompt("The result is #{result}")