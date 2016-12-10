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

has_peanut_butter?(['peanut butter', 'pickles']) #=> true
has_peanut_butter?(['jelly', 'pickles']) #=> false
