# Hash is a mapping from a key to a value
# For example, a vending machine maps a location code to the food in
# that slot:
vending_machine = {
  'A1' => 'Doritos',
  'A2' => 'Cool Ranch Doritos',
  'B1' => 'Cheetos',
  'B2' => 'Snickers'
}

# Exercise 1:
# Create a hash that maps the ids first row of to the food in that spot
# http://media.oregonlive.com/myoregon/photo/swjunk27474rj-2473099jpg-1e3dd5c7fe85e7c2.jpg

# Location  Name
# D0        Pop Tarts - Smores
# D2        Pop Tarts - Strawberry
# D4        Pop Tarts - Strawberry
# D6        Rice Crispy Treats
# D8        Reese's Pieces

vending_machine = {
  # Your code here
}


# Answer
vending_machine = {
'D0' => "Pop Tarts - Smores",
'D2' => "Pop Tarts - Strawberry",
'D4' => "Pop Tarts - Strawberry",
'D6' => "Rice Crispy Treats",
'D8' => "Reese's Pieces"
}


# To access values in the hash, we use it's key:
# What does: vending_machine['D8'] return?

# Exercise 2: Use ruby to get me a snickers.  What key do I need?





# Iterating over hashes:

# Remember that iterating over arrays give us one item
array.each do |item|
  # do something with item
end

# When using each on hashes, we get two items
hash.each do |key, value|
  # do something with key and value
end




# Exercise 3:
#
# Write a function that uses each to print the mapping
#


def print_vending_menu(vending_mapping)
  # your code here
end

# Test
vending_machine = {
'D0' => "Pop Tarts - Smores",
'D2' => "Pop Tarts - Strawberry",
'D4' => "Pop Tarts - Strawberry",
'D6' => "Rice Crispy Treats",
'D8' => "Reese's Pieces"
}


print_vending_menu(vending_machine)

# Should print:
#
# Location: D0, Name: Pop Tarts - Smores
# Location: D2, Name: Pop Tarts - Strawberry
# Location: D4, Name: Pop Tarts - Strawberry
# Location: D6, Name: Rice Crispy Treats
# Location: D8, Name: Reese's Pieces




# Answer
def print_vending_menu(vending_mapping)
  vending_mapping.each do |location, name|
    puts "Location: #{location}, Name: #{name}"
  end
end




# Exercise 4:
#
# I want one of each item, how much will it cost me?
# Write a function that uses each to sum all the prices

prices = {
  "Pop Tarts - Smores" => 1.00,
  "Pop Tarts - Strawberry" => 1.00,
  "Pop Tarts - Strawberry" => 1.00,
  "Rice Crispy Treats" => 0.75,
  "Reese's Pieces" => 1.25
}

def sum_prices(price_mapping)
  # Your code here
end

# Test
sum_prices(prices) # should return 5


# Answer
def sum_prices(price_mapping)
  sum = 0

  price_mapping.each do |name, price|
    sum += price
  end

  return sum
end



# Explain: Nested hashes
vending_machine = {
  'A1' => { 'name' => 'Doritos', 'price' => 0.75 },
  'A2' => { 'name' => 'Cool Ranch Doritos', 'price' => 1.00 }
}


# Exercise 5:
#
# Now change the hash to include the cost
# Location  Name                    Price
# D0        Pop Tarts - Smores      1.00
# D2        Pop Tarts - Strawberry  1.00
# D4        Pop Tarts - Strawberry  1.00
# D6        Rice Crispy Treats      0.75
# D8        Reese's Pieces          1.25

# Answer
vending_machine = {
  'D0' => {
    'name' => "Pop Tarts - Smores",
    'price' => 1.00
  },
  'D2' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  },
  'D4' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  },
  'D6' => {
    'name' => "Rice Crispy Treats",
    'price' => 0.75
  },
  'D8' => {
    'name' => "Reese's Pieces",
    'price' => 1.25
  }
}

# Exercise 6:
# I want a smores pop tart and reeses pieces
# What keys do I need?


# Exercise 7:
# Use each to add up the prices
def sum_prices(vending_mapping)
  # your code here
end

# Test
sum_prices(vending_machine) # Should return 5.00


# Answer
def sum_prices(vending_mapping)
  sum = 0

  vending_mapping.each do |location, food_item|
    sum += food_item['price']
  end

  return sum
end




# Hash that represents a person
person = {
  'name' => 'Tom Thompson',
  'age' => 27
}

# Nested hash
person = {
  'name' => 'Tom Thompson',
  'age' => 27,
  'address' => {
    'house_number' => '123',
    'street' => 'Fake St.',
    'city' => 'Boston',
    'state' => 'Massachusetts',
    'zip_code' => '02120'
  }
}


# Exercise 8:
#
# Create a hash that represents you as a person
me = {

}


# Explanation: how to add to a hash
#
maura = {
  'name' => 'Maura',
  'eye_color' => 'blue'
}

maura['age'] = 27  # sets

# Exercise 9:
#
# Add more information to your representation


# Now let's make a guess who game

noah = {
  'name' => 'Noah',
  'eye_color' => 'blue'
}

# Exercise 9:
#
# Write a function that takes a person and a color and checks if
# The person has that eye color
def has_eye_color?(person, color)
  # Your code here
end

# Test
has_eye_color?(noah, 'blue') # should return true
has_eye_color?(noah, 'brown') # should return false



# Answer
def has_eye_color?(person, color)
  person['eye_color'] == color
end








# Exercise 10:
#
# Write a function that takes a color and returns the list
# of people that don't have that eye color

people = [
  { 'name' => 'Noah', 'eye_color' => 'blue' },
  { 'name' => 'Emma', 'eye_color' => 'brown' },
  { 'name' => 'Liam', 'eye_color' => 'hazel' }
]

def reject_color(people, color)
  # your code here
end


# Test
reject_color(people, 'blue')

# Should return
# [
#   { 'name' => 'Emma', 'eye_color' => 'brown' },
#   { 'name' => 'Liam', 'eye_color' => 'hazel' }
# ]


# Answer
def reject_color(people, color)
  output_array = []

  people.each do |person|
    unless person['eye_color'] == color
      output_array << person
    end
  end

  return output_array
end






# HOMEWORK:

people = [
  { 'name' => 'Noah', 'eye_color' => 'blue' },
  { 'name' => 'Emma', 'eye_color' => 'brown' },
  { 'name' => 'Liam', 'eye_color' => 'hazel' },
  { 'name' => 'Olivia', 'eye_color' => 'green' },
  { 'name' => 'Mason', 'eye_color' => 'amber' },
  { 'name' => 'Ava', 'eye_color' => 'gray' }
]

# Write a game that:
# - chooses a random person: people.shuffle.first

# Loop
# - prints the names of all people in the people list and their eye color
# - asks the user to guess eye color
# - if user guesses the right eye color
# => computer says "You guessed right, I chose #{person name}"
# - else
# => remove that person from the list of options
# repeat















