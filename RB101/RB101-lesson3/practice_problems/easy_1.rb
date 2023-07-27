# Question 1 
numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers # prints 1 2 2 3 


# Question 2
# != means 'does not equal' 
# ! before something like !user_name means is opposite of their true or false equivalent
# ! after something like words.uniq! is a bang suffix meaning a mutation on the calling object will occur
# ? before something is a ternary operator 
# ? after something means method checking for a true or false condition 
# !! before something like !!user_name means object is turned into their boolean equivalent


# Question 3 
advice = "Few things in life are as important as house training your pet dinosaur"
advice.gsub!("important", "urgent")


# Question 4
numbers = [1, 2, 3, 4, 5]
# numbers.delete_at(1) will delete the element in index 1
# numbers.delete(1) will delete the value 1 from the array


#Question 5
(10..100).include?(42)


#Question 6
famous_words = "seven years ago..."
# Implementation 1
"Four score and " + famous_words
# Implementation 2
famous_words.prepend("Four score and ")

# Question 7
flinstones = ["Fred", "Wilma"]
flinstones << ["Barney", "Betty"]
flinstones << ["BamBam", "Pebbles"]
# To make this into an un-nested array
flinstons.flatten!


#Question 8 
flinstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flinstones.assoc("Barney")
