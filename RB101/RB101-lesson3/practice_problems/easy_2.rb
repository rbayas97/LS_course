# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# Ways to check if value is included in hash
ages.include?("Spot")
ages.key?("Spot")
ages.member?("Spot")


# Question 2
munster_description = "The Munsters are creepy in a good way."
munster_description.swapcase
munster_description.capitalize
munster_description.downcase
munster_description.upcase


# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
additional_ages =  { "Marilyn" => 22, "Spot" => 237 }
ages.merge(additional_ages)


# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")


# Question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# Question 6
flintstones.push("Dino")
flintstones << "Dino"


# Question 7
flintstones.push("Hoppy", "Dina")


# Question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index("house"))


# Question 9
statement = "The flintstones Rock!"
statement.count('t')


# Question 10
title = "Flintstone Family Members"
title.center(40)