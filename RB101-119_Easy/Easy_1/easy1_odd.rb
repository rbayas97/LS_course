def is_odd?(number)
  number.remainder(2) == 1 || number.remainder(2) == -1
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => trueby