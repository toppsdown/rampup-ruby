
# X) Iterator: repeating code
#
# An iterator goes through an entire list and repeats
# code for each item in the list

# Example:
#
# We call the each iterator method on an array of numbers
# for each number in the list, we assign it to the variable 'number'
# then we puts the number
#
# each: the iterator method
# do/end: the beginning of the 'block' of code
# |number|: the variable that gets set to each number

[ 1, 2, 3, 4, 5 ].each do |number|
  puts number
end



# Exercise:
#
# using each, puts out the double of the number
def print_double
  [ 1, 2, 3, 4, 5 ].each do |number|
    # Your code here
  end
end

# Answer
def print_double
  [ 1, 2, 3, 4, 5 ].each do |number|
    puts number * 2
  end
end
# /Answer




# Exercise:
#
# using each, define a method that:
#
# 1) takes an array
# 2) puts out each item in the array

def print_array(array)
  # Your code here
end


# Answer
def print_array(array)
  array.each do |thing|
    puts thing
  end
end
# /Answer








# X) Memoizer pattern: keep a running tally
#
# When we do math in our heads, we keep a running tally of
# the value.  This is called "memoizing"

# Example:
# 2 + 19 + 25 + 4 + 7
#
# In our heads, we would do:
# sum = 2 + 19 (21)
# sum = 21 + 25 (46)
# sum = 46 + 4 (50)
# sum = 50 + 7 (57)
#
# Answer is 57


# Exercise: Sum the numbers
#
# Write a method that:
# 1) takes an array of numbers
# 2) creates a variable for the sum
# 3) Iterates over the list of numbers
# 4) adds each number to the sum
# 4) returns the sum

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

  sum
end
# /Answer




# Exercise: Double all numbers
#
# Write a method that:
# 1) takes an array of numbers
# 2) creates an empty array in a variable
# 3) iterates over the given array of numbers
# 4) doubles the number, and adds it to the new array (Hint: <<)
# 5) returns the new array

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

  output_array
end
# /Answer




# Exercise: Select all even numbers
#
# Write a method that:
# 1) takes an array of numbers
# 2) creates an empty array in a variable
# 3) iterates over the given array of numbers
# 4) if number is even, add to the new array
#    Note: Use module operator (%) to check if item is even
# 5) returns the new array

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

  output_array
end
# /Answer



# Exercise 6: rewrite the include? method
#
# Write a method that:
# 1) takes an array and a thing
# 2) creates a variable to store answer
# 3) iterates over the given array
# 4) if array includes thing, set the variable to true
# 5) returns the answer variable

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

  answer
end
# /Answer




# Exercise 7: reject a thing from an array
#
# Write a method that:
# 1) takes an array
# 2) creates an empty array in a variable
# 3) iterates over the given array
# 4) for each item, if it matches given thing, don't add to new array
# 5) returns the new array

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

  output_array
end
# /Answer





# X) Name guessing game

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



# Answer
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
# /Answer








