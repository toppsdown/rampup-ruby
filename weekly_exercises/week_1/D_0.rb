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

if has_peanut_butter && has_jelly && has_bread
  puts 'You have all necessary ingredients'
else
  puts 'You need to go to the store'
end
