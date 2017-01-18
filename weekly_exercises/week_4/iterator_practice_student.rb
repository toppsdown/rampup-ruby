
# Example
[ 1, 2, 3, 4, 5 ].each do |number|
  puts number
end



# Exercise 1: using each, print out the double of the number
[ 1, 2, 3, 4, 5 ].each do |number|
  # Your code here
end


# Exercise 2: using each, define a function that prints out an array
def print_array(array)
  # Your code here
end




# Exercise 3: Write a function that takes an array and sums the numbers in it
def sum_array(array)
  # Your code here
end

# Test
puts sum_array([10, 20, 30]).to_s # should return 60



# Exercise 4: using each, return an array with all the values doubled
def double_array(array)
  # your code here
end

# Test
puts double_array([2, 5, 10]).to_s # Should return [ 4, 10, 20 ]



# Exercise 5: using each write a function that selects all even numbers in an array
def select_evens(array)
  # your code here
end

# Test
puts select_evens([2,3,4,5,6]).to_s # Should return [2,4,6]


# Exercise 6: using each, write a function tells us if 'array' includes the 'given_thing'
def array_includes?(array, given_thing)
  # Your code here
end

# Test
puts array_includes?([1,5,7], 5).to_s # => should return true
puts array_includes?([1,5,7], 'hello').to_s # => should return false






# Exercise 7: using each, write a function that rejects a given thing from an array

def reject_item(array, item_to_reject)
  # Your code here
end

# Test
puts reject_item([1,2, 'hello', 'goodbye'], 'hello').to_s # should return [1, 2, 'goodbye']







# Exercise 8
#
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

names = ['bob', 'tim', 'sally']

# Loop do structure (similar to while loop, but without the termination by condition)

def game_loop
  loop do

    if correct_guess?(guess)
      break  # this kills the loop
    end

  end
end

# type this into the interactive console to start the game:
# game_loop












