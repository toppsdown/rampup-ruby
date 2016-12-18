# Tic Tac Toe Tutorial: 5) check if game over  

## Starting state
```ruby
# Check if game over, by win or tie
if game_over?(board)
  # Tell user what happened
  # Terminate the loop
else
  # change to other user
end

def game_over?(board)
  check_for_win(board) || check_for_tie(board)
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
  # Check that spaces are not nil
end
```


## 5.2) Check for tie






