# Question 1
if false 
  greeting = "Hello world"
end

greeting
=begin
  greeting is nil here, and no "undefined method or local variable"
  exception is thrown. Typically when you reference an uninitialized
  variable, Ruby will raise an exception stating that is undefined.
  However when you initialize a local variable within an if clause even
  if that if clause doesn't get executed the local variable is initialized
  to nil
=end



# Question 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings



# Question 3
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       #"one"
puts "two is: #{two}"       #"two"
puts "three is: #{three}"   #"three"

# Example 2
def mess_with_vars(one, two, three)
one = "two"
two = "three"
three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"      #one
puts "two is: #{two}"      #two
puts "three is: #{three}"  #three

# Example 3
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"      # "two"
puts "two is: #{two}"      # "three"
puts "three is: #{three}"  # "one"



#Question 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.length == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
    end
    return true
  else
    return false
  end
end