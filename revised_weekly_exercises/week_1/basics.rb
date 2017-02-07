# Basics of ruby



# Notes about computers:
# 1) Computers read ruby code one line at a time, top to bottom
# 2) Computers read each line according to the rules of precedence (known as the orders of operation in Math)
# 3) Computers can only do one thing at a time.  This includes reading code and evaluating it







# X) Comments: Telling the computer to ignore code
#   This is a comment
#   Any code following this '#' (hash/pound sign) is ignored by the computer
#
# Note: to comment out multiple lines at a time in Repl.it or Sublime:
# 1) highlight the lines
# 2) type cmd-/ (mac), ctrl-/ (windows)







# X) Code
1 + 1  # Code that adds two numbers






# X) Returning values to the computer
#
1 + 1 # This code returns the value 2, but does not print anything to the user

# Note: In the console, the return value will be shown as:
# => 2

# Exercise
#
# Write some math in the Repl.it console
1 + 1 # Addition
10 * 20 # Multiplication
10 ** 2 # Powers
50 / 5 # Division




# X) Printing: Showing values to user
#
print 10 * 10 # This will print 100 to the console
puts 1 + 1 # This will print 2 to the console and then add a new line






# X) Methods: Telling the computer to do something
#
# `print` and `puts` are both "Methods"
# They are actions that we can tell the computer to do
#
#
# Exercise
#
# A) Use the puts method to show the number 1 thousand to the user
#
# B) Use the print method twice, once to show the number 111, and once to show the number 222











# X) Strings: Talking to the user
#
# Code text is not the same as human text (english)
# The computer uses strings for human text

'hello' # this is a string with single quotes
"goodbye" # this is a string with double quotes

# We can then use strings to talk to the user
puts "Hello!"


# Exercise:
#
# Tell the computer to say hello to you (your name)


# Answer
# puts "Hello Ethan"
# /Answer









# X) Variables: Saving values to be used later
#
# We use variables to save values.  That way we can use those values later
# in our code

# To create a variable it needs:
#
# Name: (Example below uses my_variable as the name)
#  - the variable name must be in snake_case_format.  Each word is separated by an underscore.  No capital letters are allowed
#  - the variable name can be anything you want.  The example below creates a variable named my_variable
#
# Equal sign ( = ):
#  - The equal sign saves the value on the right to the variable on the left
#
# Value: (Example below uses string "This is text saved to a variable")
#  - The value is on the right side of the equal
my_variable = "This is text saved to a variable"


# Exercise:
# Create a variable named my_name and set it to your name

# Answer:
# my_name = "Ethan"
# /Answer


# To use a variable, we use the name we gave it
# Example:
puts my_variable # Prints the text we saved above


# Exercise:
# print the variable that you created to save your name

# Answer:
# puts my_name
# /Answer






# X) Getting user input with gets
#
# Above we told the computer to talk to the user.  Now let's have the user talk to the computer
gets


# Exercise
#
# 1) use puts method to tell the user to input something
# 2) use a variable and the gets method to save the user input
# 3) use puts method to output what the user inputted



# Answer
# puts "Type something!"
# user_input = gets
# puts user_input
# /Answer









# X) Repeating with loops
#
# Example: Infinite loop that asks user input repeatedly forever:
#
# loop do
#   gets
# end

# Note: To break infinite loop:
#   Repl.it: Hit the "Stop" button
#   irb/pry: type ctrl-c


# Exercise:
#
# Write a loop that:
#  1) asks user for input
#  2) gets input and saves it to a variable
#  3) prints the input back to the user


# When you're done:
# Comment out the loop so that it doesn't run every time
# To comment something out, select the lines and type: cmd-/


# Answer
# loop do
#   puts "Type something!"
#
#   user_input = gets
#
#   puts user_input
# end
# /Answer






# X) Booleans: True/False
true
false






# X) Boolean comparisons: Equalities
"hello" == "hello" # returns true
"hello" == "goodbye" # returns false








# X) Conditionals: computers making decisions
#
# Exercise:
# Change my_input variable to make the conditional below do different things

my_input = "hello"
# my_input = "goodbye"

if my_input == "hello"
  puts "Your input was hello"
else
  puts "Your input was not hello"
end




# X) Breaking infinite loops
#
#
loop do
  break  # This will kill the loop so that it doesn't run forever
end



# Exercise
#
# Write a loop that:
#  1) Asks for user input
#  2) gets user input and saves it to a variable
#    - Note: use gets.chomp instead of gets
#  3) breaks the loop if the user input is 'exit'
#  4) otherwise, prints the user input
#
# When you're done:
# Comment out the loop so that it doesn't run every time
# To comment something out, select the lines and type: cmd-/



# Answer
# loop do
#   puts "Type something!"
#   user_input = gets.chomp

#   if user_input == 'exit'
#     break
#   end

#   puts user_input
# end
# /Answer





# X) Boolean operator OR (||): multiple conditions
#
# Truth tables:
#
# true OR true => true
# true OR false => true
# false OR true => true
# false OR false => false

# Example:
"hello" == "hello" || 1 == 1 # returns true
"hello" == "goodbye" || 1 == 1 # returns true
"hello" == "hello" || 1 == 2 # returns true
"hello" == "goodbye" || 1 == 2 # returns false


# Exercise:
#   What does each boolean expression return?

my_string = "hello"
my_num = 1

my_string == "goodbye" || my_num == 1
my_string == "goodbye" || my_num == 2




# Exercise:
#
# Write a loop that:
#  1) Asks for user input
#  2) gets user input and saves it to a variable
#    - Note: use gets.chomp instead of gets
#  3) breaks the loop if the user input is 'exit' or 'quit'
#  4) otherwise, prints the user input
#
# Note: When you're done, comment out loop so it does not run every time

# Answer
# loop do
#   puts "Type something!"
#   user_input = gets.chomp

#   if user_input == 'exit' || user_input == 'quit'
#     break
#   end

#   puts user_input
# end
# /Answer





# X) Boolean comparisons: inequalities
# Not equal: !=
1 != 2 # => true
1 != 1 # => false

# less than: <
1 < 2 # => true
2 < 1 # => false

# less than or equal: <=
1 <= 2 # => true

# greater than: >
1 > 2 # => false
2 > 1 # => true

# greater than or equal: >=
2 >= 1 # => true




# Exercise:  Number guessing game
#
# Write a game that:
#   1) Picks a random number between 1 and 100
#      - Note: use rand(1..100)
#   2) starts a loop that
#     - Asks user to guess the number
#     - gets and saves user input as a number
#       Note: use `to_i` method to convert string to number
#            (to_i is short for to integer)
#     - if user guess is answer, tell user they won
#     - if user guess is less, tell user to guess higher
#     - if user guess is greater, tell user to guess lower


# Answer
# answer = rand(1..100)

# loop do
#   puts 'Guess a number between 1 and 100'
#   user_input = gets.chomp.to_i

#   if user_input == answer
#     break
#   end

#   if user_input < answer
#     puts "Guess higher"
#   end

#   if user_input > answer
#     puts "Guess lower"
#   end
# end
# /Answer






