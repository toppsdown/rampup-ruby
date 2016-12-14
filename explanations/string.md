# Strings

## What's a string?
A String is a text object.  A computer calls text a "String of characters"


## Syntax
Strings can be created with single or double quotes


### Single quotes
Example: `'this is a string with single quotes'`

'I can put double quote text in her: Sally said "Hello"'


### Double quotes
Example: `"This is a string with double quotes"

"I can put single quote text in here: don't can't won't"

**String Interpolation**
With double quotes, we can insert values into a string

## Common Methods
**+**: `'hello' + ' ' + 'ethan'
**downcase**: `'OMG'.downcase` => 'omg'
**empty?**: `''.empty?` => true
**gets**: `gets` => stops execution of the program and waits for user to input text
**puts**: `puts 'some string'` => Prints a string to the command line
**reverse**: `'Hello'.reverse` => 'olleH'

[More Methods](https://ruby-doc.org/core-2.2.0/String.html)

### String interpolation
Using double quotes, we can inject code into our strings
```ruby
my_name = 'Timmy'
puts "Your name is #{my_name}"  # prints "Your name is Timmy"

user_input = gets.chomp
puts "You entered: #{user_input}"  # Prints the user input back to the user

puts "5 x 5 = #{5 x 5}"  # Prints "5 x 5 = 25".  Renders the code inside the curly braces
```


## Additional Reading
[Learn Ruby The Hard Way](https://learnrubythehardway.org/book/ex6.html)
