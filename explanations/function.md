# Functions and Methods


## What's the difference?
You define a function in a file and you can use it in that file
You define a method on an object (like an array), then you can use it on the array (`[1,2,3].include?(3)`)

**NOTE: You do not know how to define methods yet**


## What's a function
A function is a form of abstraction.  It allows us to package code and give that package a name.  Then we can use the code by typing it's name


## Metaphor
Functions are like the verbs of our code

```
add_two_numbers(5, 6)

harry_potter.casts('alohamora')

tim.eats('ham sandwich')
```

## How to create a function
```
def tell_me_i_am_awesome
  puts 'you are awesome'
end
```

## Naming conventions
Functions are all lowercase.  If multiple words, connect with underscores

## How to call (use) a function
To call a function, just use it's name: `tell_me_i_am_awesome`
output: `you are awesome`


## Parameters/Arguments
Usually, we want to give something to a function that it can use.  These are called parameters/arguments.  Arguments are variables that can be used in our code, but are not set until the function is called

```
def tell_me_i_am_awesome(my_name)
  puts 'Hey ' + my_name
  puts 'You are so awesome'
end

# To call

```
To call: `tell_me_i_am_awesome('Dwayne Johnson')`
Output:
```
Hey Dwayne Johnson
You are so awesome
```

## Scope
The arguments given to a function, and the variables created inside a function are only available to that function.
When you define a function, it is only available to the file it is in.
To use it in a different file, you must `require` it


## Example of abstracting with a function





## Common functions


To do:
## Method chaining (future)
