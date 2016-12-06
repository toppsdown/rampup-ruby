# Nil

## What is Nil?
Nil represents NOTHINGNESS


## Assigning as nil
`nil` is a value that can be assigned to variables
```
empty_variable = nil
```

## Getting an unset value from an array or hash
```
my_array = [0,1,2,3]
my_array[4] #=> nil

my_hash = { age: 27 }
my_hash[:name] #=> nil

```

## Nil as false
Nil is the only other falsy value in ruby (other than false)  
This means we can use it in conditionals


This example only prints out your name if name is defined in the hash
```
my_hash = { age: 27 }

if my_hash[:name]
  puts "Your name is " + my_hash[:name]
else
  puts "You don't have a name"
end
```








