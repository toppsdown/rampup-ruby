# Tic Tac Toe Tutorial: 2) Print Game Board

## Table of Contents
   * [Tic Tac Toe Tutorial: 2) Print Game Board](#tic-tac-toe-tutorial-2-print-game-board)
      * [Starting place](#starting-place)
      * [2.0) Print first row of spaces](#20-print-first-row-of-spaces)
         * [Using string concatenation](#using-string-concatenation)
         * [Tests](#tests)
      * [2.1) print_divider](#21-print_divider)
      * [2.2) print second row of board](#22-print-second-row-of-board)
         * [Using array joining](#using-array-joining)
         * [Tests](#tests-1)
      * [Ending print board](#ending-print-board)

## Starting place
```ruby
def print_game_board(board)
  # print first row of board
  # print divider
  # print second row of board
  # print divider
  # print third row of board
end
```

## 2.0) Print first row of spaces
### Using string concatenation
```ruby
def print_first_row(board)
  output_string = ' '

  # Add first space
  if board[0] != nil
    output_string = output_string + board[0]
  else
    output_string = output_string + ' '
  end

  # Add divider
  output_string = output_string + ' | '

  # Add second space
  # This code does the same thing the first space, but is shorter
  if board[1]
    output_string += board[1]
  else
    output_string += ' '
  end

  # Add divider
  output_string = output_string + ' | '

  # Add third space
  # This code does the same thing, but is shorter
  output_string += (board[2] || ' ')

  # print output string
  puts output_string
end
```

### Tests
```ruby
puts "Tests for first row\n\n"

puts "First row of empty board"
print_first_row([])

puts "\n\n"

puts "First row of partial board"
print_first_row(['O', nil, 'X'])

puts "\n\n"

puts "First row of full board"
print_first_row(['O', 'X', 'X'])
```

## 2.1) print_divider
```ruby
# explicitly print 11 dashes
def print_divider
  puts '-----------'
end

# using string math
def print_divider
  puts '-' * 11
end
```

## 2.2) print second row of board
### Using array joining
```ruby
def print_second_row(board)
  array_for_join = []

  # Add first space on second row
  if board[3] != nil
    array_for_join << board[3]
  else
    array_for_join << ' '
  end

  # Add second space on second row
  # This code does the same thing as the first space, but is shorter
  if board[4]
    array_for_join << board[4]
  else
    array_for_join << ' '
  end

  # Add third space on second row
  # This code does the same thing, but is shorter
  array_for_join << (board[5] || ' ')

  # Join array with a pipe
  joined_string = array_for_join.join(' | ')

  # Use string interpolation to add space at beginning
  puts " #{joined_string}"
end
```

### Tests
```
puts "Tests for second row\n\n"
puts "Second row of empty board"
print_second_row([])

puts "\n\n"

puts "Second row of partial board"
print_second_row([nil,nil,nil, 'O', nil, 'X'])

puts "\n\n"

puts "Second row of full board"
print_second_row([nil, nil, nil, 'O', 'X', 'X'])

puts "\n\n"
```

## Ending print board
```ruby
def print_game_board(board)
  print_first_row(board)
  print_divider
  print_second_row(board)
  print_divider
  print_third_row(board)
end
```


