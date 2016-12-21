# Tic Tac Toe Tutorial: 5) check if game over  

## Starting state
```ruby
def game_over?(board)
  check_for_win(board) || all_spots_taken?(board)
end

def check_for_win(board)
  # Check rows for win
  # Check columns for win
  # check diagonals for win
end

def all_spots_taken?(board)
  # check if all spots are filled
end
```

## 5.1) Check for win
```ruby
def check_for_win(board)
  # Check rows for win
  # Check columns for win
  # check diagonals for win
end
```

### 5.1.1) Check for win in rows
```ruby
def check_rows_for_win(board)
  check_first_row ||
  check_second_row ||
  check_third_row
end

def check_first_row(board)
  # Check that all spaces in first row are the same
  # Spaces in first row: 0,1,2
  board[0] == board[1] && board[1] == board[2] &&

  # Check that spaces are not nil
  board[0] != nil
end

# Fill this in yourself
def check_second_row(board)
  # Check that all spaces in second row are the same
  # Spaces in second row: 3,4,5

  # Check that spaces are not nil
end

# Fill this in yourself
def check_third_row(board)

end
```


### 5.1.2) Check for win in columns
```ruby
def check_columns_for_win(board)
  check_first_column ||
  check_second_column ||
  check_third_column
end

def check_first_column(board)
  # Check that all spaces in first column are the same
  # Spaces in first column: 0,3,6
  board[0] == board[3] && board[3] == board[6] &&

  # Check that spaces are not nil
  board[0] != nil
end

# Fill this in yourself
def check_second_column(board)
  # Check that all spaces in second column are the same
  # Spaces in second column: 1,4,7

  # Check that spaces are not nil
end

# Fill this in yourself
def check_third_column(board)

end
```

### 5.1.3) Check for win in diagonals
```ruby
def check_diagonals_for_win(board)
  check_forward_diag ||
  check_backward_diag
end

def check_forward_diag(board)  
  # Spaces in forward diagonal: 0,4,8
  board[0] == board[4] && board[4] == board[8] &&

  # Check that spaces are not nil
  board[0] != nil
end

# Fill this in yourself
def check_backward_diag(board)
  # Check that all spaces in second column are the same
  # Spaces in second column: 2,4,6

  # Check that spaces are not nil
end
```


## 5.2) Check for cat's game
```ruby
# Option 1: Check that all spots have something in them
def all_spots_taken?(board)
  board[0] != nil &&
  board[1] != nil &&
  board[2] != nil &&
  board[3] != nil &&
  board[4] != nil &&
  board[5] != nil &&
  board[6] != nil &&
  board[7] != nil &&
  board[8] != nil
end

# Option 2: Check that board does not have an empty spot
def all_spots_taken?(board)
  !board.include?(nil)
end
```


## Ending State
```ruby
def game_over?(board)
  check_for_win(board) || all_spots_taken?(board)
end

def check_for_win(board)
  check_rows_for_win(board) ||
  check_columns_for_win(board) ||
  check_diagonals_for_win(board)
end

def all_spots_taken?(board)
  !board.include?(nil)
end
```

