# Problem: Write a method that takes an array of integers between 0-19 and return an array
#          of those integers sorted base on the english word for each number 

# input:  array of integers
# output: array of integers sorted based on english word for each number

# Requirements: 
#       - Explicit: 
#            - input is numbers 0-19
#            - output must be array of integers sorted by their english word spelling
#              order
#            - output array must contain 20 numbers, 0 - 19 
#       - Implicit: none for this question



# Data Structure/ Algorithm
#       - create an an empty array and set it to `sorted_array`
#       - make a hash with key as each element of the input array, and actual word
#         of number 'as a string' as the value 
#       - we will now want to sort_by the hash by the value so call the sort method on the
#         hash and sort by value 
#       - use the return value of sort and call each on it to then take the 1st element
#         and append it to the sorted_array
#       - return the sorted array 



def alphabetic_number_sort(arr)
  sorted_arr = []
  words_arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
               'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  num_word_hash = create_num_hash(arr, words_arr)
  sorted_hash = num_word_hash.sort_by {|_, value| value}
  sorted_hash.each { |element| sorted_arr << element[0]}
  sorted_arr  
end 

def create_num_hash(num_arr, word_arr)
  counter = 0             
  alphabet_hash = {}
  loop do 
    alphabet_hash[num_arr[counter]] = word_arr[counter]
    counter += 1
    break if counter == num_arr.size
  end 
  alphabet_hash
end 

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]