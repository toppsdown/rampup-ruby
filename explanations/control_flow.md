
# Control Flow

## What's Control Flow?
This is how computers make decisions.  We give them a flow to follow

## Glossary
| Term | Description |
| --- | --- |
| Decision Tree | A visual representation of how to make decisions |
| Flow Chart | Similar to a Decision Tree |
| Conditional | The questions we can ask to make our decision |
| Condition | An expression that evaluates to true/false |

## Syntax rules
### Multiline Conditional
Multiline conditionals must have an `end`.  The `end` closes the conditional.    
If you forget to put `end`, you will get an error like this:

`SyntaxError: (irb):7: syntax error, unexpected tSTRING_DEND, expecting keyword_end`

Please indent your code so that if/else/end are aligned, and the internal conditions are aligned

```
if my_var > 9000
  puts 'HIS POWER LEVEL IS OVER 9000!'
else
  puts 'You are weak!'
end
```


### Inline conditional
```
def say_hi_only_to_ethan(user_name)
  puts 'Hi' if user_name == 'Ethan'
end
```

Exactly the same as:
```
def say_hi_only_to_ethan(user_name)
  if user_name == 'Ethan'
    puts 'Hi'
  end
end
```


### Ternary Conditional
Don't use this.  Just for reading purposes  
`my_var > 9000 ? puts 'HIS POWER LEVEL IS OVER 9000!' : puts 'You are weak!'`


## Types of conditionals

### if/elsif/else:
```
if my_age >= 21
  puts 'You can drink'
elsif my_age >= 18
  puts 'You can smoke'
else
  puts 'You are a minor'
end
```


### unless:
Opposite of an if statement.  Only used to make code more like english  
These do the same thing

```
if my_age >= 21
  puts 'You can drink'
end

unless my_age < 21
  puts 'You can drink'
end
```


### case:
When there are many elsifs in your conditional, you may prefer a case

```
case my_age
when my_age >= 21
  puts 'You can drink'
when my_age >= 18
  puts 'You can smoke'
else
  puts 'You are a minor'
end
```

[More reading on case statements](http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/)

## Truthiness
There are only two things that the computer thinks are false: `false` and `nil`  
Everything else is considered `true`


## Common problems

### Single `=` instead of double `==`:

This will always execute because `myage = 21` returns `21` which is [truthy](#truthiness)
```
if my_age = 21
  puts 'You are 21'
end
```

Make sure you are actually comparing:
```
if my_age == 21
  puts 'You are 21'
end
```


### Conditions that can never be reached:
```
if my_age >= 18
  puts 'You can smoke'
elsif my_age >= 21
  puts 'You can drink'  # This will never be executed
else
  puts 'You are a minor'
end
```


### Missed cases:
This code tells us that 0 is a negative number.  That doesn't sound right

```
if my_number > 0
  puts 'This number is positive'
else
  puts 'This number is negative'
end
```


### Wrong conditions:
Make sure you are testing the right thing!  
This code will not allow an 18 year old to smoke or a 21 year old to drink

```
if my_age > 21
  puts 'You can drink'
elsif my_age > 18
  puts 'You can smoke'
else
  puts 'You are a minor'
end
```

## Practice
[Code Academy](https://www.codecademy.com/courses/ruby-beginner-en-NFCZ7/0/1?curriculum_id=5059f8619189a5000201fbcb)

## Reading
[Basic If](https://learnrubythehardway.org/book/ex29.html)
[If/Else](https://learnrubythehardway.org/book/ex30.html)
[If/Elsif/Else](https://learnrubythehardway.org/book/ex31.html)

[Functions & Ifs](https://learnrubythehardway.org/book/ex35.html)
