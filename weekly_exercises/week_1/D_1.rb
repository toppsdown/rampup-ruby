inventory = ['peanut butter', 'pickles', 'jelly']
inventory_length = 3

has_peanut_butter = false
index = 0
while index < inventory_length
  has_peanut_butter = has_peanut_butter || (inventory[index] == 'peanut butter')
  index = index + 1
end

has_jelly = false
index = 0
while index < inventory_length
  has_jelly = has_jelly || (inventory[index] == 'jelly')
  index = index + 1
end

has_bread = false
while index < inventory_length
  has_bread = has_bread || (inventory[index] == 'jelly')
  index = index + 1
end

if has_peanut_butter && has_jelly && has_bread
  puts 'You have all necessary ingredients'
else
  puts 'You need to go to the store'
end
