# Ignore this, just for testing purposes
def check_test(actual, expect)
  status = expect == actual ? 'Pass' : 'Fail'
  puts "#{status}, Expected: #{expect}, Actual: #{actual}"
end


# Hashes store data
# Classes can store data and actions (functions/methods)

# Defining a class:
class Person

end

# A class is like a blueprint, none of it's details are filled in
# when we fill in the details, we create an "Instance" of that class
Person.new # => An instance of the person class


# Creating the initial attributes
class Person

  def initialize(name)
    puts "You gave me the name: #{name}"
  end

end

Person.new('Bobby') # => Prints "You gave me the name: Bobby"


# Saving those attributes with instance variables
# Instance variables store information and can be used by other
# functions in the class
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

# Exercise 1: Write a function that returns the name of the object
class Person

  def initialize(name)
    @name = name
  end

  def name
    # your code here
  end

end

bobby = Person.new('Bobby')
check_test(bobby.name, 'Bobby')

sam = Person.new('Sam')
check_test(sam.name, 'Sam')





# Setters: functions that set attributes on an instance

# Exercise 2: Write a function that sets the @name variable to something different
class Person

  def name=(new_name)
    # your code here
  end

end



name_changing_person = Person.new('Bobby')
check_test(name_changing_person.name, 'Bobby')

name_changing_person.name = 'Sam'
check_test(name_changing_person.name, 'Sam')



# Exercise 3:
# Change our guess who game to use classes instead of hashes

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
def game_loop
  people = [
    { 'name' => 'Noah', 'eye_color' => 'blue' },
    { 'name' => 'Emma', 'eye_color' => 'brown' },
    { 'name' => 'Liam', 'eye_color' => 'hazel' },
    { 'name' => 'Olivia', 'eye_color' => 'green' },
    { 'name' => 'Mason', 'eye_color' => 'amber' },
    { 'name' => 'Ava', 'eye_color' => 'gray' }
  ]

  # Get Answer
  answer = people.sample

  loop do
    # Tell user what the options are
    print_hash(people)

    # Tell user to guess an
    print 'Please guess an eye color: '
    input = gets.chomp

    if answer['eye_color'] == input
      puts 'You Win!'
      puts "The answer was #{answer['name']}"
      break
    else
      people = reject_color(people, input)
    end
  end
end

# Answer
def game_loop
  people = [
    Person.new('Noah', 'blue'),
    Person.new('Emma', 'brown'),
    Person.new('Liam', 'hazel'),
    Person.new('Olivia', 'green'),
    Person.new('Mason', 'amber'),
    Person.new('Ava', 'gray')
  ]

  # Get Answer
  answer = people.sample

  loop do
    # Tell user what the options are
    print_hash(people)

    # Tell user to guess an
    print 'Please guess an eye color: '
    input = gets.chomp

    if answer.eye_color == input
      puts 'You Win!'
      puts "The answer was #{answer.name}"
      break
    else
      people = reject_color(people, input)
    end
  end
end








