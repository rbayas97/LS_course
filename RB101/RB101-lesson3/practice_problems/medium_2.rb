# Question 1
a = "forty two"
b = "forty two"
c = a 

puts a.object_id
puts b.object_id
puts c.object_id
# a and c will have the same object id while b will not be the same as a and c
# string are mutable


# Question 2
a = 42
b = 42
c = a 

puts a.object_id
puts b.object_id
puts c.object_id
# all will output the same object id as integers are immutable 



# Question 3
def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"



# Question 5
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# Question 6
def color_valid(color)
  color == 'blue' || color == 'green'
end 