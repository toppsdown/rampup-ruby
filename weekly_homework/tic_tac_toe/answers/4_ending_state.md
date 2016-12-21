## Tic Tac Toe Tutorial: 4) Process space choice (Full)

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
        # Tell user what happened
        # Terminate the loop
      # 7. if not over
        # change to other user
    # If not available
    else
      # tell user not available
      puts "That space is not available.  Try again"
    end
  end
end

def print_game_board(board)
  print_first_row(board)
  print_divider
  print_second_row(board)
  print_divider
  print_third_row(board)
end

def print_divider
  puts '-' * 11
end

# Demonstrates string concatenation (Beginner)
def print_first_row(board)
  output_string = ' '

  output_string += (board[0] || ' ')
  output_string += ' | '
  output_string += (board[1] || ' ')
  output_string += ' | '
  output_string += (board[2] || ' ')

  puts output_string
end

# Demonstrates Array joining (Intermediate)
def print_second_row(board)
  array_for_join = []

  array_for_join << (board[3] || ' ')
  array_for_join << (board[4] || ' ')
  array_for_join << (board[5] || ' ')

  joined_string = array_for_join.join(' | ')

  puts " #{joined_string}"
end

# Demonstrates map iterator and array ranges (Advanced)
def print_third_row(board)
  third_row = board[6..8]

  joined_string = third_row.map{ |space| space || ' ' }.join(' | ')

  puts " #{joined_string}"
end

def space_available?(board, space)
  board[space] == nil
end

def set_space(board, space, user)
  board[space] = user
end

start_game
```
