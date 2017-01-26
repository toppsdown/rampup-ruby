
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


# Answer
def print_array(array)
  array.each do |thing|
    puts thing
  end
end

# ADD TEST CASE

my_array = ['hello', 1, 5, 'no', 'yes']

print_array(my_array)




# Exercise 3: Write a function that takes an array and sums the numbers in it
def sum_array(array)
  # Your code here
end

# Test
puts sum_array([10, 20, 30]).to_s # should return 60

# Answer
def sum_array(array)
  sum = 0

  array.each do |number|
    sum += number
  end

  return sum
end





# Exercise 4: using each, return an array with all the values doubled
def double_array(array)
  # your code here
end

# Test
puts double_array([2, 5, 10]).to_s # Should return [ 4, 10, 20 ]

# Answer
def double_array(array)
  output_array = []

  array.each do |thing|
    output_array << thing * 2
  end

  return output_array
end





# Exercise 5: using each write a function that selects all even numbers in an array
def select_evens(array)
  # your code here
end

# Test
puts select_evens([2,3,4,5,6]).to_s # Should return [2,4,6]

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


# Exercise 6: using each, write a function tells us if 'array' includes the 'given_thing'
def array_includes?(array, given_thing)
  # Your code here
end

# Test
puts array_includes?([1,5,7], 5).to_s # => should return true
puts array_includes?([1,5,7], 'hello').to_s # => should return false




# Answer
def array_includes?(array, given_thing)
  answer = false

  array.each do |thing|
    if thing == given_thing
      answer = true
    end
  end

  return answer
end



# Exercise 7: using each, write a function that rejects a given thing from an array

def reject_item(array, item_to_reject)
  # Your code here
end

# Test
puts reject_item([1,2, 'hello', 'goodbye'], 'hello').to_s # should return [1, 2, 'goodbye']


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



# Loop do structure (similar to while loop, but without the termination by condition)

def game_loop
  names = ['bob', 'tim', 'sally']
  answer = names.sample

  loop do
    puts "I chose a name from the following list"
    puts names.join(',')

    print "Guess which name I chose: "
    user_input = gets.chomp

    # did user guess correctly?
    if user_input == answer
      puts "Congrats!  You guessed the right name!"
      break
    else
      puts "Nope, wrong answer"

      # Remove the guess from the list
      names = reject_item(names, user_input)
    end
  end
end

# type this into the interactive console to start the game:
# game_loop







