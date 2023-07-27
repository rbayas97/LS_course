def triangle(number)
  while counter <= number
    puts (' ' * (number - counter)) + ("*" * counter)
    counter += 1
  end 
end 

triangle(9)
triangle(5)
