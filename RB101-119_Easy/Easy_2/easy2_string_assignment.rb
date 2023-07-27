#Take a look at the following code
name = 'Bob'
save_name = name 
name = 'Alice'
puts name, save_name

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
    #'BOB   'BOB'
=begin
  Because assignment in Ruby just assigns a regerence to a variable,
  both name and save_name refer to the same thing. Bob when you apply
  name.upcase!, whtich mutate name in place, the value that save_name
  references also changes. Thus, both name and save_anme are set equal to
  'BOB'
=end 
