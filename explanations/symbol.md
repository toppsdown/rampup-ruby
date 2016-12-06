# Symbol

## What's a symbol
A symbol is a data type.  You can't set it to anything, and you can't change it.  It just exists  

## Uses
1) Symbols are primarily used in hashes to give them more meaning  
```
person_1 = {
  age_in_months: 18
  first_name: 'Tommy',
  :last_name => 'Pickles'
}

person_1[:first_name] # => 'Tommy'
```

2) (Advanced Usage, Ignore for now) Defined function names are stored as symbols  


## Common functions
```
'key'.to_sym # => :key
```
