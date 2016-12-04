# Scoping
Variables are only available in the area that you defined them  
Arguments are only available in the function that defines them  

```
# Defined in the "Global" scope
# The global scope (everything outside of the functions) can access:
#  external_var
#
# but cannot access:
#  internal_var_1, argument_1, internal_var_2, argument_2
external_var = 123


# example_function_1 can access:
#  internal_var_1, argument_1
# but cannot access:
#  external_var, internal_var_2, argument_2

def example_function_1(argument_1)
  internal_var_1 = 456
end


# example_function_2 can access:
#  internal_var_2, argument_2
#
# but cannot access:
#  external_var, internal_var_1, argument_2

def example_function_2(argument_2)
  internal_var_2 = 789
end

```
