# Tic Tac Toe Tutorial: 6) Do things after game over  

## Starting state  
This is our while loop at this point:
```ruby
def start_game
  # 1. Create starting state of board
  board = [nil] * 9

  # Create user list
  users = ['X', 'O']

  # Choose first player
  current_player = users.first

  # Create initial conditions for while loop
  game_over = false
  while game_over != true

    # 2. Print out current game board
    print_game_board(board)

    # 3. Get user input (a space number)
    user_input = gets.chomp
    space = user_input.to_i

    # 4. Process what happens for that space
    # If space is available
    if space_available?(board, space)
      # fill in space with user icon
      set_space(board, space, current_player)

      # 5. Check if game over, by win or tie
      # 6. if game over
      if game_over?(board)
        # 6.1 Tell user what happened
        # 6.2 Terminate the loop
      
      # 7. if not over
      else
        # change to other user
      end
    # If not available
    else
      # tell user not available
      puts "That space is not available.  Try again"
    end
  end
end
```


## 6.1) Tell user what happened
```ruby


```
