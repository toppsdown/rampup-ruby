#Hash

## Table of Contents
   * [Hash](#hash)
      * [What's a Hash?](#whats-a-hash)
      * [Metaphor](#metaphor)
      * [Glossary](#glossary)
      * [Syntax rules](#syntax-rules)
      * [WARNING: Understanding the Hash Rocket](#warning-understanding-the-hash-rocket)
      * [Creating](#creating)
         * [When key is a symbol](#when-key-is-a-symbol)
      * [Setting a key value pair in an existing hash](#setting-a-key-value-pair-in-an-existing-hash)
      * [Getting (accessing)](#getting-accessing)
      * [The value does not exist](#the-value-does-not-exist)
      * [Common methods](#common-methods)
         * [Deleting](#deleting)
      * [More reading:](#more-reading)

## What's a Hash?
A hash is a data storage object that uses key/value pairs.  Also known as a "Set"  

## Metaphor
Imagine you are using a vending machine.  You push the button "B2" which gives you cheetos.  
In a hash, we would say that the key "B2" maps to "Cheetos"

```
vending_machine_mapping = { "B2" => "Cheetos" }

def get_item(key, mapping)
  return mapping[key]
end

get_item("B2", vending_machine_mapping)  #returns "Cheetos"
```

## Glossary
| Term | Description |
| --- | --- |
| Key | The thing that maps to a value |
| Value | The thing that is stored by the mapping |
| Item/Element | A key/value pair in a hash |
| Traversing | Going through a whole hash |

## Syntax rules
1) Hashes are defined using curly braces `{}`  
2) Keys and values can be of any type: strings, symbols, arrays, or even other hashes  
3) Set data pairs using hash rocket (`=>`) or with a colon (`:`) - (See Creating section for more details)  
4) Pairs are separated by commas  
5) Spaces are not necessary, but help with readability  
6) Hashes can be over multiple lines as long as there is a comma at the end of each line  
  
## WARNING: Understanding the Hash Rocket
Hash rockets have two meanings:
  1) Assignment in a hash
  2) When explaining code, writers will use `=>` to denote return values

**Example:**
```
my_hash = { 'age' => 27 }
my_hash['age'] # returns 27
my_hash['age'] # => 27
```

## Creating
We can create key value pairs by using the Hash Rocket (`=>`)  
```
empty_hash = {}
person_data_hash = { 'age' => 175, 'first_name' => 'Hubert', 'last_name' => 'Farnsworth'}

hash_with_many_types = { 
  'age' => 175, 
  5 => 'this uses a number as a key', 
  {} => 'this uses an empty hash as a key', 
  [] => 'this uses an empty array as a key',
  :name => 'this uses a symbol as a key'
}
```

### When key is a symbol
Symbols are static names.  See [Symbol](/explanations/symbol.md) for more details.
There is a shortcut for symbols.  The following do the exact same thing.  It just makes things look prettier

`{ :age => 175 }` Is the same as `{ age: 175 }`



## Setting a key value pair in an existing hash
Use square brackets to set keys
```
new_hash = {}
new_hash['age'] = 175
new_hash[5] = 'this uses a number as a key'
```
new_hash is now equal to `{ 'age' => 175, 5 => 'this uses a number as a key' }`


## Getting (accessing)
To get a value from a hash, you supply the key in square brackets.  
You might notice, that this is similar to an array.  You can think of arrays as hashes that only allow integers as keys
```
new_hash = { age: 175 }
new_hash[:age] # returns 175
```

## The value does not exist
If the key you provide is not present in the hash, you will get `nil` back.  See [Nil](/explanations/nil.md) for more information  

```
my_hash = { age: 175 }
my_hash[:limit] # returns nil
```

## Common methods
All methods for hashes can be found [here](http://ruby-doc.org/core-2.3.0/Hash.html)  
`{age: 175, first_name: 'Hubert'}.keys # returns array [:age, :first_name]`  
`{age: 175, first_name: 'Hubert'}.values # returns array [175, 'Hubert']`  

### Deleting
When you delete from a hash, it returns the deleted value, and edits the hash
```
my_hash = { age: 27, name: 'Leela', num_eyes: 1 }
my_hash.delete(:age) # returns 27

my_hash # now equal to { name: 'Leela', num_eyes: 1 }
```

## More reading:
[Longer explanation](http://www.eriktrautman.com/posts/ruby-explained-hashes)


