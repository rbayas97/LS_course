# ask the user for two numbers
# ask the user for an operation to perform on the two numbers 
# perform the operation on the two numbers
# output the result 

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What is the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What is the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
end 

Kernel.puts("The result is #{result}")