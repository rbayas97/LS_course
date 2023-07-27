def stringy(number, default_start = 1)
  array = []
  counter = 0 

  if default_start == 1
    while counter < number
      if counter.even?
        array << 1
      else 
        array << 0 
      end
      counter += 1
    end 
    array.join('')
  else 
    while counter < number
      if counter.even?
        array << 0
      else 
        array << 1 
      end
      counter += 1
    end 
    array.join('')
  end
end 

puts stringy(9,0)
