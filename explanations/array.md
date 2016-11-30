
#Arrays

## What's an Array?
A list.  Can put any type of data in the array.  Things in an array are called "Items" or "Elements"

## Glossary
| Term | Description |
| --- | --- |
| Index | The location of an item in the array |
| 0 Indexing | List index starts at 0 |
| Item/Element | A thing in an array |
| Traversing | Going through a whole array |

## Syntax rules
Each things is separated by a comma

Spaces are not necessary, but help with readability


## Creating
Square brackets

`[ 1, 2, 3, 4 ]`  <= An Array of numbers

`[ 'hello', 'goodbye' ]` <= An array of strings

`[ 'text', 1, ['another array'] ]` <= An array of mixed types


## Accessing Items/Elements
Use square brackets to access the item you want

`my_array = [ 'a', 'b', 'c', 'd']`

`my_array[0]` returns 'a'

`my_array[2]` returns 'c'


## 0 Indexing
**Human list:**

  1) Milk

  2) Bread

  3) Cheese

**Computer list:**

  0) Milk

  1) Bread

  2) Cheese

## Common problems
Index out of range

## Common methods
`[1,2,3].length` returns 3

`['hello', 'goodbye'].include?('hello')` returns `true`


## Changing an item
`my_array = [1,2,3]`

`my_array[0] = 'ethan'`

`my_array` now equal to `['ethan', 2, 3]`


## Adding to an array
`[ 1, 2, 3 ] << 4` returns `[1, 2, 3, 4]`


## Combining two arrays
`[1,2,3] + [4,5,6]` returns `[1,2,3,4,5,6]`









