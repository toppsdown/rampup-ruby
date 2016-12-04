# Precedence

## What is precedence?
The order of operations  
The order that the computer reads things


## Order of operations in math
`2 + 3 * 4 + 5 = 19`  
`(2 + 3) * (4 + 5) = 45`


## Order of operations in booleans
`true || false && false || false` => `true`  
`(true || false) && (false || false)` => `false`


## Example:
Do we have both bread and jelly?
```
['bread', 'peanut butter'][0] == 'bread' ||
['bread', 'peanut butter'][1] == 'bread' &&
['bread', 'peanut butter'][0] == 'jelly' ||
['bread', 'peanut butter'][1] == 'jelly'
```
returns `true` even though the answer should be `false`


## Ruby best practices
Using parenthesis will make your code more readable, but not everybody does, so you need to understand precedence


## More reading:
[Precedence table](https://www.techotopia.com/index.php/Ruby_Operator_Precedence)




