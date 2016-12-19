# Tic Tac Toe Tutorial: Program Plan

## Main structure of program

```ruby
def main_loop

  # Create starting state of board

  # Create user list
  users = ['X', 'O']  

  # Choose first player
  current_player = users.first

  # Create initial conditions for while loop
  game_over = false
  while game_over != true

    # Print out current game board
    # Get user input (a space number)

    # Process what happens for that space
    # If space is available
      # fill in space with user icon
      # Check if game over, by win or tie
      # if game over
        # Tell user what happened
        # Terminate the loop
      # if not over
        # change to other user
    # If not available
      # tell user not available
  end
end
```

## List of pieces and explanations
### 1. Create starting state of board  
For the first example, we will use a single 9 space array.  

```ruby
# Explicit
board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]

# Shortcut
board = [nil] * 9
```

### 2. Print out current game board  
```ruby
def print_game_board(board)
  # print first row of spaces
  # print divider
  # print second row of spaces
  # print divider
  # print third row of spaces
end
```
  
[Answer](2_print_game_board.md#tic-tac-toe-tutorial-2-print-game-board)


### 3. Get user input (a space number)  
This assumes that the user will enter a number in range of the board

```ruby
user_input = gets.chomp.to_i
```

#### Optional
1) Check that user entered a number 0-8  
2) Add ability for user to exit the game  

### 4. process what happens for chosen space  
```
# If space is available
  # fill in space with user icon
  # ...
# If not available
  # tell user not available
```

[Answer](4_process_space_choice.md)

### 5. check if game over  
  - check for win  
  - check for tie  

### 6. handle game over case
  - Tell user what happened  
  - Terminate the loop  

### 7. handle game continue case    
  - change to other user    


