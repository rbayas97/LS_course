# # Problem 1 
# arr = ['10', '11', '9', '7', '8']


# arr.map! do |element|
#   element.to_i
# end 

# p arr.sort { |a, b| b <=> a}




# Problem 2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by do |hash|
#   hash.map do |_, _|
#     hash[:published]
#   end
# end





# Problem 3
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}



# p arr1[2][1][3]
# p arr2[1][:third][0]
# p arr3[2][:third][0][0]
# p hsh1['b'][1]
# p hsh2[:third] ## Correct Answer = hsh2[:third].key(0)




# Problem 4
# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4
# arr2[-1] = 4
# hsh1[:first][2][0] = 4
# hsh2[['a']][:a][2] = 4

# p arr1
# p arr2
# p hsh1
# p hsh2




# Problem 5
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }


# sum = 0
# munsters.each do |name, info|
#   if info['gender'] == 'male'
#     sum += info['age']
#   end 
# end 

# p sum




# Problem 6
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, info|
#   puts "#{name} is a #{info['age']}-year-old #{info['gender']}."
# end





# # Problem 7
# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# arr[1][0] -= a 

# # a will still reference 2
# # b will referene the same array however it will now be [3, 8]
# p a
# p b




# Problem 8 
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy','dog']}

# hsh.each do |_, value|
#   value.each do |string|
#     string.split('').each do |character|
#       if 'AEIOUaeiou'.include?(character)
#         puts character
#       end 
#     end 
#   end 
# end





# Problem 9 
# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# new_arr = arr.map do |array|
#   array.sort do |a,b|
#     b <=> a 
#   end 
# end 

# p new_arr




# Problem 10 (DID NOT FIGURE OUT THIS PROBLEM)
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end





# Problem 11
# arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

# new_arry = arr.map do |array| 
#   array.select do |element|
#     element % 3 == 0
#   end 
# end 

# p new_arry




# Problem 12
# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# hash_from_arr = {}

# arr.each do |array|
#   hash_from_arr[array[0]] = array[1]
# end

# p hash_from_arr





# Problem 13 (DID NOT FIGURE OUR THIS PROBLEM)
# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# # [1, 6, 9] [1, 6, 7] [1, 3, 8] [1, 5, 9] x completed this step

# # [1, 3, 8] [1, 5, 9] [1, 6, 9] [1, 6, 7]

# # [1, 3, 8] [1, 5, 9] [1, 6, 7] [1, 6, 9]

# arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end 
# end 




# Problem 14
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# description = []
# hsh.each do |_ , value|
#   if value[:type] == 'fruit'
#     description << value[:colors].map { |word| word.capitalize}
#   elsif value[:type] == 'vegetable'
#     description << value[:size].upcase
#   end 
# end 

# p description





# Problem 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# even_hashes = []
# arr.each do |arr_hash|
#   even_hashes << arr_hash if arr_hash.all? { |k, v| v.all? { |number| number.even? }}
# end 

arr.select do |arr_hash|
  arr_hash.all? { |k, v| v.all? { |number| number.even? } }
end.tap { |x| p x}