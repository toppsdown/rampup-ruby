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

inventory = ['peanut_butter', 'pickles', 'jelly']

has_peanut_butter = has_item?(inventory, 'peanut butter')
has_jelly = has_item?(inventory, 'jelly')
has_bread = has_item?(inventory, 'bread')

if has_peanut_butter && has_jelly && has_bread
  puts 'You have all necessary ingredients'
else
  puts 'You need to go to the store'
end

