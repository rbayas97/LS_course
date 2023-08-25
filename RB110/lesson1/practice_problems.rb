## 1. Given array turn array into hash where names are keys and values are 
#    posiitons in array 

# flinstones = ['Fred', 'Barney', 'Wilma', 'Betty', 'Pebbles', 'BamBam']
# flinstones_hash = {}

# flinstones.each_with_index do |name, index|
#   flinstones_hash[name] = index 
# end 

# p flinstones_hash




## 2. Add up all of the ages from the Munster family hash:
# ages = { 'Herman' => 32, "Lily" => 30, 'Grandpa' => 5843, 'Eddie' => 10, 'Marilyn' => 22, 'Spot' => 237 }

# combined_age = 0
# ages.each do |key, value|
#   combined_age += value
# end 

# p combined_age




## 3. Remove people with age 100 and greater from the hash
# ages = { 'Herman'=> 32, 'Lily' => 30, 'Grandpa' => 402, 'Eddie' => 10 }
# ages.delete_if { |_, value| value >= 100}
# Actual solution: ages.keep_if { |_, age| age < 100 }




## 4. Pick out the minimum age from our current Munster family hash
# ages = { "Herman" => 32, "Lily" => 30, "Brandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# pages.min_by { |key, value| value }





## 5. Find the index of the first name that starts with 'Be'
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.index { |name| name[0,2] == 'Be' }





## 6. Write code that changes te arrays so that all names are shorteded to first 3
#     characters. Do not create a new array

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map! { |value| value[0,3] }
# p flintstones





## 7. Create a hash that expresses the frequency with which each letter occurs in string
statement = 'The Flintstones Rock'






