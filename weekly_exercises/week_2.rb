# Tic Tac Toe


# Game board
  # data structure to represent board
  # Function to mark a space
    # Check that space is not already marked
  # Check if anyone has won/lost/stalemated
    # Check rows
    # Check Columns
    # Check diaganals

# User ineraction
  # Interactive user input
def play
  board = []
  current_user = 'x'
  waiting_user = 'o'

  while true
    # Print game board
    print_game_board(board)

    # Ask user for a number 0-8
    print "User #{current_user}'s Turn.  Choose a number 0-8:"
    space = gets.chomp.to_i

    # Check if space is open
    if board[space]
      puts "Space is already taken, please try again"
      next
    else
      # put user selection into space
      board[space] = current_user
    end

    # check if anyone has won
    if false
      break
    end

    # repeat process with second user
    temp_var = current_user
    current_user = waiting_user
    waiting_user = temp_var
  end
end



# Print out game board
def print_game_board(board)
  output_board = fill_in_gaps(board)
  puts output_board[0..2].join(' | ')
  puts '----------'
  puts output_board[3..5].join(' | ')
  puts '----------'
  puts output_board[6..-1].join(' | ')
end

# Board array may not be 9 in length
# board array may have nulls as items in the array
def fill_in_gaps(board)
  num_spaces = 9

  index = 0
  output_board = []
  while index < 9
    output_board << (board[index] || ' ')
    index += 1
  end

  output_board
end

play
