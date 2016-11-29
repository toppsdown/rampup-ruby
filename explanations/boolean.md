# Booleans

## What's a Boolean
Boolean is the name for true/false

## Boolean Comparisons
Any operator that compares two things and returns a boolean

Examples:

`'equal' == 'equal'` returns `true`

`'not equal' == 'nope'` returns `false`

Inequalities:
| Name | Symbol |
| --- | --- |
| Equals | `==`|
| Not Equals | `!=` |
| Less than | `<` |
| Greater than | `>` |
| Less than or equals | `<=` |

## Boolean Operators

** WARNING: Do not use `and`, `or`, `&`, `|`.  These are not the same as Boolean AND and OR

### OR (`||` - The double pipe)
Similar to english "or".  If either of the conditions are true, returns true

Example:

`1 == 1 || 'hello' == 'goodbye'` returns `true`

`true || true` returns `true`

`true || false` returns `true`

`false || false` returns `false`

### AND (`&&` - The double amp)
Similar to english "and".  If both conditions are true, returns true

Examples:

`1 == 1 && 'hello' == 'goodbye'` returns `false`

`true && true` returns `true`

`true && false` returns `false`

`false && false` returns `false`

### NOT (!)
Returns the opposite boolean

Examples:

`!true` returns `false`

`!(1 == 1)` returns `false`






