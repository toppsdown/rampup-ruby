# Scoping
Variables are only available in the area that you defined them  
Arguments are only available in the function that defines them  

## Errors
If you try to access a variable in the wrong scope, you will get this error:  
`NameError: undefined local variable or method 'my_var' for main:Object`

## Example
```
# Global Scope
external_var = 123

# Function scope
def example_function_1(argument_1)
  internal_var_1 = 456
end

def example_function_2(argument_2)
  internal_var_2 = 789
end

```

## Global Scope
The global scope (everything outside of the functions) can access: `external_var`  
but cannot access: `internal_var_1, argument_1, internal_var_2, argument_2`


## Function Scope
### example_function_1  
**can access:** `internal_var_1, argument_1`  
**cannot access:** `external_var, internal_var_2, argument_2`  

### example_function_2 
**can access:** `internal_var_2, argument_2`  
**cannot access:** `external_var, internal_var_1, argument_2`

