# Problems: Write a method that takes two array of numbers Arguments and returns a 
#           single array that contains the product of every combo of numbers that can be
#           formed between the two arrays. Result should be sorted by increasing value


# Input:  Two arrays of numbers
# Output: Single array that contains the product of each combination that can be created 
#         by the input arrays


# Requirments:
#       - Explicit:
#            - Neither argument will be an empty array
#            - Returned array should be sorted by increasing value
#            - Return arrays must have every combination product by the two input arrays
#            - Both arrays will be a list of numbers
#       - Implicit
#            - Duplicate products should be in the returned array.


# Data Structure/ Algorithm
#       - Create a variable named `multiple_pairs` and assign it to an empty array
#       - Create a loop that will iterate through the first array. (Use each)
#       - Within the block following the each method inv. in step 2
#         - Create a variable named counter  and assign it to 0 
#         - Create a loop that will go through the second array argument using counter
#         - Create a variable named `product` and assign it to the return value of 
#           the number from array1 * the number from array2[counter]
#         - Append `product` to `multiple_pairs` with the << operator
#         - Increase counter by 1 
#         - Break if the counter is equal to the size of array 2
#       - Each method will repeat for the remaining elements in the first array
#       - Use the sort method to and sort `multiple_pairs`. This will be the last line
#         and this will be the return value of the method.

def multiply_all_pairs(arr1, arr2)
  multiple_pairs = []

  arr1.each do |element|
    counter = 0 
    loop do 
      product = element * arr2[counter]
      multiple_pairs << product 
      counter += 1 
      break if counter == arr2.size
    end 
  end 
  
  multiple_pairs.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) # == [2, 4, 4, 6, 8, 8, 12, 16]