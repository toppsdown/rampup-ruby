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
