def xor?(statement1, statement2)
  statement1 ^ statement2 
end 
puts xor?(5.even?, 4.even?) 
puts xor?(5.odd?, 4.odd?) 
puts xor?(5.odd?, 4.even?) 
puts xor?(5.even?, 4.odd?) 


# WRONG don't use ^ operator. Will result in error in some cases 

# CORRECT ANSWER
def xor?(statment1, statement2)
  return true if statement1 && !statement2
  return true if statement2 && !statement1
  false
end 