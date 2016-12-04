
# Loops

## What's a Loop?
A loop is how we tell a computer to repeat something

## Glossary
| Term | Description |
| --- | --- |
| Condition | The test that tells the loop whether to continue or stop |
| Terminate | When a loop stops |
| Infinite Loop | A loop that never terminates |


# While Loop
## Syntax rules
While loops require:  
1) a condition to test that is created outside of the loop  
2) modifification to the condition inside of the loop  
3) A point when the condition becomes "false" (terminating condition)  
4) The while loop code stops with an `end`  

```
my_number = 0              # Starting state of the condition
while my_number < 10       # Test the number to see if we should continue.  Do not continue if number is 10 or higher
  puts 'Your number is:'
  puts my_number

  my_number = my_number + 1 # Increase the number
end
```
[More Reading on while loops](https://learnrubythehardway.org/book/ex33.html)

## Break
You can terminate a loop early by using the `break` keyword  

This code will terminate when the number reaches 5, instead of 10
```
my_number = 0              
while my_number < 10       
  puts 'Your number is:'
  puts my_number

  my_number = my_number + 1 

  if my_number == 5
    break
  end
end
```


## Traversing an array

This code will go through an array and add up all the numbers
```
my_array = [ 27, 89, 200 ]
array_length = my_array.length
current_index = 0
total_sum = 0

while current_index < array_length
  total_sum = total_sum + my_array[current_index]
  current_index = current_index + 1
end

puts total_sum   # Will print 316
```

## Traversing a Hash
(Coming Soon)


## Common problems

### Forgot to change the state
This code will never terminate because we are not increasing the number, so the condition will never change
```
my_number = 0              
while my_number < 10       
  puts 'Your number is:'
  puts my_number
end
```

### Condition is never satisfied
This code will never terminate because we skip over the terminating condition

```
my_number = 0
while my_number != 5      # While the number is not five
  puts 'Your number is:'
  puts my_number

  my_number += 2
end
```

## Additional Reading
[While Loops](https://learnrubythehardway.org/book/ex33.html)
[Array Loops](https://learnrubythehardway.org/book/ex32.html)
