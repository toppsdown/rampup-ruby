# State

## What is state?
State is the current attributes of everything in the system and in the program  


## Examples of State
When you turn something off and on again to make it work, you are resetting the state of the system


## Editing State
### Arrays
In the following example, the shovel operator `<<` edits the state of our kitchen and returns the new kitchen state
```
kitchen_inventory = []
kitchen_inventory << 'pickles' # => ['pickles']
kitchen_inventory # => ['pickles']
```
  
In the following example, the addition operator `+` does not edit the state of our kitchen
```
kitchen_inventory = ['Turnips']
kitchen_inventory + ['Pickles', 'Ice Cream'] # returns ['Turnips', 'Pickels', 'Ice Cream']
kitchen_inventory # => ['Turnips']
```
