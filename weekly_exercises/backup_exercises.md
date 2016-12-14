### 1. Read this code
Read the following code. Make sure you understand every piece.  Play with it in Repl.it.  Google search for anything you don't know.  If there's something you don't understand and can't find on google message me in slack and make a note of it so that we can discuss it in class


**NOTE:** All of these functions can take strings or arrays  

1) Use the [precedence table](https://www.techotopia.com/index.php/Ruby_Operator_Precedence) to manually evaluate the code below
2) Write a summary of what each function does  
3) Explain in your own words how the function works

**Reading 1:**
```
# Can take a string or array
def some_func_2(given_string)
  if given_string.length <= 1
    return true
  else
    if given_string[0] == given_string[-1]
      return some_func_2(given_string[1..-1])
    else
      return false
    end
  end
end
```

**Reading 3:**
```
# Can take a string or array
def some_func_3(given_string)
  answer = true

  while given_string.length >  1 && answer == true
    if given_string[0] == given_string[-1]
      given_string = given_string[1..-2]
    else
      answer = false
    end
  end  
  
  return answer
end
```

### 3. Learn something new
Replace the while loop below with a for loop  
Notes:
- You will have to google for how to use a for loop
- You will have to change how the answer is created and changed

```
# Can take a string or array
def some_func_3(given_string)
  answer = true

  while given_string.length > 1 && answer == true
    if given_string[0] == given_string[-1]
      given_string = given_string[1..-2]
    else
      answer = false
    end
  end  
  
  return answer
end
```


### 4. Extra credit
Same as exercise 3, but use an iterator instead of a loop
Hints:
- You don't know what an iterator is.  Google it
- The most common ones are `each` and `map`

