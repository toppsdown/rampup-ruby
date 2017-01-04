#extra features
# Clear Board

def start_game
  # Create initial conditions for while loop
  game_over = false
  #Create Board
  board = [nil] * 9

  #Assign Player value
  player = "X"
  while game_over != true
    # run through all the steps in the game loop
      #Print board
      # To call function in the while loop
      print_game_board(board)

      #Tell user which turn: X or O

      #Tell user to input move
      #Get input
      user_input = gets.chomp
      space = user_input.to_i
      #Convert the input to a board space :array

      #Check if it is a valid move
      if space_available?(board, space)
        board[space] = player
        #Check if game over: full or win
        if game_over?(board)
          #If it is: set Game Over to true
          game_over = true
          puts("Congratulations player #{player} wins")
        else
          #If it is not: switch players
          player = switch_player(player)
        end
      else
        puts("That was an invalid move. Please try again")
      end
        #If it is not: Ask user to give new input
        #Else: Enter move into array
  end
end

def start_game
  #Create Board
  board = [nil] * 9

  #Assign Player value
  player = "X"
  loop do
    #Print board
    print_game_board(board)

    #Tell user which turn: X or O
    puts "Players turn: #{player}"

    # Tell user to input move
    # Get input
    user_input = gets.chomp
    space = user_input.to_i

    # Check if it is a valid move
    if !space_available?(board, space)
      puts("That was an invalid move. Please try again")
      next
    end

    board[space] = player

    #Check if game over: full or win
    if game_over?(board)
      puts("Congratulations player #{player} wins")
      break
    end

    player = switch_player(player)
  end
end

# This is put in the same file below the other functions
def game_over?(board)
  check_for_win(board) || all_spots_taken?(board)
end

def check_for_win(board)
  # Check rows for win
  row_win(board) ||
  # Check columns for win
  col_win(board) ||
  # check diagonals for win
  diag_win(board)
end

def row_win(board)
  (board[0] && board[0] == board[1] && board[0] == board[2]) ||
  (board[3] && board[3] == board[4] && board[3] == board[5]) ||
  (board[6] && board[6] == board[7] && board[6] == board[8])
end

def col_win(board)
  (board[0] && board[0] == board[3] && board[0] == board[6]) ||
  (board[1] && board[1] == board[1] && board[4] == board[7]) ||
  (board[2] && board[2] == board[5] && board[2] == board[8])
end

def diag_win(board)
  (board[0] && board[0] == board[4] && board[0] == board[8]) ||
  (board[2] && board[2] == board[4] && board[2] == board[6])
end

def all_spots_taken?(board)
  # Check that all spots have been taken
  !board.include?(nil)
end

def space_available?(board, space)
  if board[space] == nil
    return true
  else
    return false
  end
end

def switch_player(player)
  if player == "X"
    player = "O"
  else
    player = "X"
  end
  return player
end

def get_value(value)
  if value == nil
    value = "   "
  else
    value = " " + value + " "
  end
  return value
end

# Structure of function
def print_game_board(board)
  # print first row of spaces
  puts(get_value(board[0]) + "|" + get_value(board[1]) + "|" + get_value(board[2]))
  # print divider
  puts("-" * 11)
  # print second row of spaces
  puts(get_value(board[3]) + "|" + get_value(board[4]) + "|" + get_value(board[5]))
  # print divider
  puts("-" * 11)
  # print third row of spaces
  puts(get_value(board[6]) + "|" + get_value(board[7]) + "|" + get_value(board[8]))

end

board = [nil] * 9

#start_game # this starts the game.  You can also call this in the repl interactive environment















