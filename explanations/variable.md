
#Variables

## What's a Variable?
When we want to reference something in many different places in our code, we need to name it.  The name is the variable

## Glossary
| Term | Description |
| --- | --- |
| assignment | the act of setting a variable |


## Syntax rules
Can use any numbers or letters, but not punctuation

variables with multiple-part names are separated by underscores

`this_is_a_long_variable_name`


## Assigning
`my_variable = 123`

`my_name = 'Ethan'`

`my_age = 27`


## Referencing (using)

`puts my_name` => will print `Ethan` to the console

`my_age + 100` => returns `127`




## Common problems
### Scoping
Variables are only available in the area that you defined them

See: [Scoping](scope.md)


### Variable unassigned
If you have not yet assigned a variable, or you do not have access to it, you will get this error:

`NameError: undefined local variable or method 'my_var' for main:Object`


## Changing a variable
If you want to change it to something entirely different, just set it to something new
```
my_var = 123
puts my_var # returns 123

my_var = 456
puts my_var # returns 456
```

If you want to edit the value, you can reference the variable in the assignment
```
my_var = 100
my_var = my_var - 1  # Now it's equal to 99

my_var += 50  # Now it's equal to 149
```


## Practice
[Code Academy](https://www.codecademy.com/en/courses/ruby-beginner-en-d1Ylq/0/3?curriculum_id=5059f8619189a5000201fbcb)

## Additional Reading
[Learn Ruby The Hard Way](https://learnrubythehardway.org/book/ex4.html)
