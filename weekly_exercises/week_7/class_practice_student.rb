# Ignore this, just for testing purposes
def check_test(actual, expect)
  status = expect == actual ? 'Pass' : 'Fail'
  puts "#{status}, Expected: #{expect}, Actual: #{actual}"
end

require 'pry'

# Classes

# Terminology:

# Object: An object contains data and methods
# Example:
#   - [1,2,3] is an array object
#   - it has data (the values 1, 2, and 3)
#   - it has methods (+, <<, each, reject)

# Class: A blueprint for an object
#   This is where the methods for an object are defined

# Instance: A more specific name for an object
# Example:
#   - [1,2,3] is an Instance of the Array Class



# Everything in Ruby is an object, and is an instance of a class
'hello'.class # => An instance of the String class
[1, 2, 3].class # => An instance of the Array class
1.class # => An instance of the Fixnum class





# Defining a class:
# Notice that the class name is capitalized
class Person

end

# Format of names in ruby:
#
# snake_case: used for variables, methods, and symbols
# PascalCase: used for classes and modules
# camelCase: not used in ruby


# Instances

# A class is like a blueprint, none of it's details are filled in.
# When we fill in the details, we create an "Instance" of that class

# Instance of the Person class
Person.new

# Initializers

# How to customize the creation of your class:
# When you call Person.new, it executes the "initialize" method

class Person
  def initialize(name)
    puts "You gave me the name: #{name}"
  end
end

Person.new('Bobby') # => Prints "You gave me the name: Bobby"

# while in pry, create a new person
# binding.pry
# puts



# Instance Variables

# How do we save data to an instance?
# We save attributes using instance variables.
# Instance variables store information and can
#   be used by other functions in the class
class Person
  def initialize(name)
    @name = name  # => '@' means it's an instance variable
  end

  def print_name
    puts "My name is #{@name}"
  end
end

bobby = Person.new('Bobby') # => Saves 'Bobby' in the @name instance variable
bobby.print_name # => Prints 'My name is Bobby'





# Getters: functions that return an attribute from an instance

# No one other than the instance can get the instance variable so
# we have to define a "getter" function to access it

# This will break with NoMethodError
#
# me = Person.new('Tim')
# me.name

# Exercise 1: Write a function that returns the name of the person
class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end


# Tests
bobby = Person.new('Bobby')
check_test(bobby.name, 'Bobby')

sam = Person.new('Sam')
check_test(sam.name, 'Sam')












# Setters: functions that set attributes on an instance

# Just like with getters, no one can set the @name instance variable
# unless we define a method that allows them to

# This will cause a NoMethodError:
#
# me = Persone.new('Tim')
# me.name = 'Timothy'

# Exercise 2: Write a function that sets the @name variable to something different
class Person

  def name=(new_name)
    @name = new_name
  end

end

person = Person.new('Ethan')
person.name=('New Name')
person.name = 'New Name'


# Tests
# Set first name
name_changing_person = Person.new('Bobby')
check_test(name_changing_person.name, 'Bobby')

# Change name of person
name_changing_person.name = 'Sam'
check_test(name_changing_person.name, 'Sam')

binding.pry
puts



# Side Note:
# We've defined the Person class twice.  Does the new definition override the old one?

# To test, try to use the print_name method on person
#
# binding.pry
# Person.new('Timmy').print_name


# Answer:
# Open Classes and Monkey Patching
#
# Ruby has "open classes" which allow modification at any time. This is one of
# the most amazing attributes of ruby and means you can customize other
# people's code at any time. This process is called "Monkey Patching"





# Exercise 3:
# Change the guess who game to use classes instead of hashes

class Person
  def initialize(name, eye_color)
    # your code here
  end

  def name
    # your code here
  end

  def eye_color
    # your code here
  end
end



# Starting state
def guess_who_with_hashes
  people = [
    { 'name' => 'Noah', 'eye_color' => 'blue' },
    { 'name' => 'Emma', 'eye_color' => 'brown' },
    { 'name' => 'Liam', 'eye_color' => 'hazel' },
    { 'name' => 'Olivia', 'eye_color' => 'green' },
    { 'name' => 'Mason', 'eye_color' => 'amber' },
    { 'name' => 'Ava', 'eye_color' => 'gray' }
  ]

  # Choose win answer
  answer = people.sample

  loop do
    puts # for readability

    # Tell user what the options are
    people.each do |person|
      puts "#{person['name']} has eye color #{person['eye_color']}"
    end

    # Tell user to guess an eye color
    puts # newline for readability
    print 'Please guess an eye color: '
    input = gets.chomp

    if answer['eye_color'] == input
      puts 'You Win!'
      puts "The answer was #{answer['name']}"
      break
    else
      people = people.reject do |person|
        person['eye_color'] == input
      end
    end

    puts
  end
end

# Play game by uncommenting next line
# guess_who_with_hashes


def guess_who_with_classes
  # 1) The code from guess_who_with_hashes is copied below

  # 2) Replace the list of persons with a list of Person objects
  # For Example:
  #   { 'name' => 'Noah', 'eye_color' => 'blue' }
  #
  # Becomes:
  #   Person.new('Noah', 'blue')

  # 3) Replace the hash keys with methods
  # For Example:
  #   noah = { 'name' => 'Noah', 'eye_color' => 'blue' }
  #   noah['name']
  #
  # Becomes:
  #   noah = Person.new('Noah', 'blue')
  #   noah.name


  # 2) Replace these with Person objects
  people = [
    { 'name' => 'Noah', 'eye_color' => 'blue' },
    { 'name' => 'Emma', 'eye_color' => 'brown' },
    { 'name' => 'Liam', 'eye_color' => 'hazel' },
    { 'name' => 'Olivia', 'eye_color' => 'green' },
    { 'name' => 'Mason', 'eye_color' => 'amber' },
    { 'name' => 'Ava', 'eye_color' => 'gray' }
  ]

  # Choose win answer
  answer = people.sample

  loop do
    puts # for readability

    # Tell user what the options are
    people.each do |person|
      # 3) Replace the hash access with the corresponding method
      puts "#{person['name']} has eye color #{person['eye_color']}"
    end

    # Tell user to guess an eye color
    puts # newline for readability
    print 'Please guess an eye color: '
    input = gets.chomp

    if answer['eye_color'] == input
      puts 'You Win!'
      puts "The answer was #{answer['name']}"
      break
    else
      people = people.reject do |person|
        person['eye_color'] == input
      end
    end

    puts
  end

end

# Play game by uncommenting next line
# guess_who_with_classes




# Exercise 4:
# Now let's create a "PeopleSet" class that stores the people
# then move the printing and rejection methods to the people class

# Note that the name is in "Pascal Case"




class PeopleSet
  # initialize with array of persons and save to iVar

  # getter that returns the current list of people

  # print method that prints out the details of
  #   all people stored

  # rejection method that takes eye color and rejects
  #   anyone in the list who has that eye color
end


# rewrite the loop as part of a GuessWhoGame class
class GuessWhoGame
  def start
    # 1) Copy the code from guess_who_with_classes
    # 2) replace the people list with an instance of the PeopleSet class
    # 3) when choosing answer, use the PeopleSet getter
    # 4) replace the people printing with the PeopleSet print method
    # 5) replace the eye color rejection with the PeopleSet reject method
  end
end

# Start game by uncommenting the next line
# GuessWhoGame.new.start



# Example:
#
# Common state using instance variables
# Using our classes and instance variables, we can
#  make our game code very readable

class GuessWhoGame
  def start
    create_people

    choose_answer

    loop do
      puts

      ask_user_for_input

      if answer.eye_color == @input
        puts 'You Win!'
        puts "The answer was #{answer.name}"
        break
      else
        @people.reject_eye_color(@input)
      end

      puts
    end
  end

  def create_people
    @people = PeopleSet.new(
      [
        Person.new('Noah', 'blue'),
        Person.new('Emma', 'brown'),
        Person.new('Liam', 'hazel'),
        Person.new('Olivia', 'green'),
        Person.new('Mason', 'amber'),
        Person.new('Ava', 'gray')
      ]
    )
  end

  def choose_answer
    @answer = @people.list_of_people.sample
  end

  def ask_user_for_input
    # Tell user what the options are
    @people.print_all

    # Tell user to guess an
    puts
    print 'Please guess an eye color: '
    @input = gets.chomp
  end
end



# Exercise 5: Real world example

# The power of objects and classes is that we can model the real world
# Imagine we are at the supermarket
# What objects should we create to model a customer experience?

# When designing our object architecture, think in terms of
#   what the object has, and what it can do



# Exercise 6:
# Implement a simplified version of the above only using:
#   Customer, Food Item, Cashier
#
# For simplification:
#   1) Customer should have a current amount of money (bank)
#   2) Customer should have only 1 food item
#   2) Cashier should deduct the price of the food item from the customer's bank


# Exercise 7:
# Implement the complete model of a store with all the appropriate methods



# binding.pry
# puts 'done'




