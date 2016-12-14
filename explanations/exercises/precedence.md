# Week 1: Exercise B

What does this return?  What should it return?
Find the error using the [Precedence table](https://www.techotopia.com/index.php/Ruby_Operator_Precedence)

## 1) Starting code
```ruby
['bread', 'peanut butter'][0] == 'bread' ||
['bread', 'peanut butter'][1] == 'bread' &&
['bread', 'peanut butter'][0] == 'jelly' ||
['bread', 'peanut butter'][1] == 'jelly'
```

## 2) Render array indexes
```ruby
'bread' == 'bread' ||
'peanut butter' == 'bread' &&
'bread' == 'jelly' ||
'peanut butter' == 'jelly'
```

## 3) Render equalities
```ruby
true ||
false &&
false ||
false
```

## Render &&
```ruby
true || false || false
```

## Render ||
```ruby
true
```
