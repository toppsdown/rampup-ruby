# For teachers
# Use this exercise sheet to guide the in class code discussion

# Exercise A: Check for ingredients
## 1) Define required ingredients
['peanut butter', 'jelly', 'bread']

## 2) Define current inventory
['peanut butter', 'pickles', 'jelly']

## 3) Check each item in required ingredients against current inventory

  ## 3.1) Check inventory for peanut butter
    ### 3.1.1) Check first item in inventory to see if peanut butter
    ### 3.1.2) Chech second item in inventory to see if peanut butter
    ### 3.1.3) etc...
    ### 3.1.4) Combine with OR operator (||)

['peanut butter', 'pickles', 'jelly'][0] == 'peanut butter' ||
['peanut butter', 'pickles', 'jelly'][1] == 'peanut butter' ||
['peanut butter', 'pickles', 'jelly'][2] == 'peanut butter'

  ## 3.2) Check inventory for jelly
  ## 3.3) Check inventory for bread


## 4) Abstract with variables
inventory = ['peanut butter', 'pickles', 'jelly']

has_peanut_butter = inventory[0] == 'peanut butter' ||
                    inventory[1] == 'peanut butter' ||
                    inventory[2] == 'peanut butter'

has_jelly = inventory[0] == 'jelly' ||
            inventory[1] == 'jelly' ||
            inventory[2] == 'jelly'

has_bread = inventory[0] == 'bread' ||
            inventory[1] == 'bread' ||
            inventory[2] == 'bread'

## 5) Check all ingredients
has_peanut_butter && has_jelly && has_bread



# Exercise B: Showing Precedence
['bread', 'peanut butter'][0] == 'bread' ||
['bread', 'peanut butter'][1] == 'bread' &&
['bread', 'peanut butter'][0] == 'jelly' ||
['bread', 'peanut butter'][1] == 'jelly'

# Render array indexes
'bread' == 'bread' ||
'peanut butter' == 'bread' &&
'bread' == 'jelly' ||
'peanut butter' == 'jelly'

# Render equalities
true ||
false &&
false ||
false

# Render &&
true || false || false

# Render ||
true




# Exercise C: Control flow
if has_peanut_butter && has_jelly && has_bread
  puts 'You have all necessary ingredients'
else
  puts 'You need to go to the store'
end



# Exercise D: While Loop
has_pb = false
inventory_length = inventory.length
index = 0

while index < inventory_length
  has_pb = has_pb || (inventory[index] == 'peanut butter')
  index = index + 1
end



# Exercise E: Functions

def has_peanut_butter?(inventory)
  has_pb = false
  inventory_length = inventory.length
  index = 0

  while index < inventory_length
    has_pb = has_pb || (inventory[index] == 'peanut butter')
    index = index + 1
  end

  has_pb
end

has_peanut_butter?(['peanut butter', 'pickles']) # true
has_peanut_butter?(['jelly', 'pickles']) # false


def has_item?(inventory, item)
  has_item = false
  inventory_length = inventory.length
  index = 0

  while index < inventory_length
    has_item = has_item || (inventory[index] == item)
    index = index + 1
  end

  has_item
end

has_item?(['peanut butter', 'pickles'], 'peanut butter') # true
has_item?(['jelly', 'pickles'], 'peanut butter') # false











