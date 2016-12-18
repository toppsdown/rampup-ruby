def main_loop

  # create starting state of board
  board = []

  # Create initial condition for while loop
  over = false
  while !over
    # Print out current game board
    # Get user input (a space number)
    # process what happens for that space

    # If space is available
      # fill in space with user icon
      # check for winner
      # Check for stalemate
      # if game over
        # Tell user what happened
        # Terminate the loop
      # if not over
        # change to other user
    # If not available
      # tell user not available
  end
end


def print_game_board(board)
  # print first row of spaces
  # print divider
  # print second row of spaces
  # print divider
  # print third row of spaces
end

def print_divider
  puts '-' * 11
end

def print_second_row(board)
  array_for_join = []

  # Add first space on second row
  if board[3] != nil
    array_for_join << board[3]
  else
    array_for_join << ' '
  end

  # Add second space on second row
  # Shorter code
  if board[4]
    array_for_join << board[4]
  else
    array_for_join << ' '
  end

  # Add third space on second row
  # Shorter code
  array_for_join << (board[5] || ' ')

  # Join array with a pipe
  joined_string = array_for_join.join(' | ')

  # Use string interpolation to add space at beginning
  puts " #{joined_string}"
end

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
  # Shorter code
  if board[1]
    output_string += board[1]
  else
    output_string += ' '
  end

  # Add divider
  output_string = output_string + ' | '

  # Add third space
  # Shorter code
  output_string += (board[2] || ' ')

  # print output string
  puts output_string
end


puts "Tests for first row\n\n"
puts "First row of empty board"
print_first_row([])
puts "\n\n"
puts "First row of partial board"
print_first_row(['O', nil, 'X'])
puts "\n\n"
puts "First row of full board"
print_first_row(['O', 'X', 'X'])
puts "\n\n"


puts "Tests for second row\n\n"
puts "Second row of empty board"
print_second_row([nil,nil,nil])
puts "\n\n"
puts "Second row of partial board"
print_second_row([nil,nil,nil, 'O', nil, 'X'])
puts "\n\n"
puts "Second row of full board"
print_second_row([nil, nil, nil, 'O', 'X', 'X'])
puts "\n\n"





