
# Example
[ 1, 2, 3, 4, 5 ].each do |number|
  puts number
end

# Exercise 1: using each, print out the double of the number
[ 1, 2, 3, 4, 5 ].each do |number|
  # Your code here
end






# Remember when we used while loops to check if something was in
# an array?  Here's how to do it with each
def array_includes?(array, given_thing)
  answer = false

  array.each do |thing|
    if thing == given_thing
      answer = true
    end
  end

  return answer
end




# Exercise 2: Write a function that takes an array and sums the numbers in it
def sum_array(array)
  # Your code here
end

# Test
sum_array(10, 20, 30) # should return 60

# Answer
def sum_array(array)
  sum = 0

  array.each do |number|
    sum += number
  end

  return sum
end





# Exercise 3: using each, return an array with all the values doubled
def double_array(array)
  # your code here
end

# Test
double_array(2, 5, 10) # Should return [ 4, 10, 20 ]

# Answer
def double_array(array)
  output_array = []

  array.each do |thing|
    output_array << thing * 2
  end

  return output_array
end




# Exercise 4: using each write a function that selects all odd numbers in an array
def select_evens(array)
  # your code here
end

# Test
select_evens([2,3,4,5,6]) # Should return [2,4,6]

# Answer
def select_evens(array)
  output_array = []

  array.each do |number|
    if number % 2 == 0
      output_array << number
    end
  end

  return output_array
end






# Exercise 5: using each, write a function that rejects a given thing from an array

def reject_item(array, item_to_reject)
  # Your code here
end

# Test
reject_item([1,2, 'hello', 'goodbye'], 'hello') # should return [1, 2, 'goodbye']


# Answer
def reject_item(array, reject_item)
  output_array = []

  array.each do |item|
    if item == reject_item

    else
      output_array << item
    end
  end

  return output_array
end



# Write a function that uses "each" iterator to reject an item from an array

# Game:
# Computer chooses a name from a list
#
# Game loop:
#
# Computer prints out list of available names
# ask for user guess
#
# if user guesses correct
# => Kill loop
# else
# => remove guess from list and repeat













