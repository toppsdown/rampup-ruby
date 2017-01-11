#extra features
# Clear Board

def start_game
  # Set up the data for the game
  #Create users
  #Create and print board
  #Choose first player

  #Finialize
    #Check Winner
    #Check if Board is Full

  #Ability for players to play pieces

  #Alternate between players

  #Check if move is invalid
    #Don't alternate if move is invalid
      #alphabet, out of scope, already taken space



  # Create initial conditions for while loop
  game_over = false
  #Create Board
  board = [[nil]*6,[nil]*6,[nil]*6,[nil]*6,[nil]*6,[nil]*6]

  #Assign Player value
  player = "X"
  while game_over != true
    # run through all the steps in the game loop
      #Print board
      # To call function in the while loop
      puts("")
      print_game_board(board)
      puts("")

      #Tell user which turn: X or O
      #Tell user to input move
      puts("Player #{player}, it is your turn. Please select a number!")
      #Get input
      user_input = gets.chomp
      space = user_input.to_i
      #Convert the input to a board space :array

      #Check if it is a valid move
      if space_available?(board, space)
        #board[space] = player
        play_move(board,space, player)
        #Check if game over: full or win
        if game_over?(board)
          #If it is: set Game Over to true
          game_over = true
          print_game_board(board)
          puts("")
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

# This is put in the same file below the other functions
def game_over?(board)
  check_for_win(board) || all_spots_taken?(board)
end

def check_for_win(board)
  # Check rows for win
  row_win(board) ||
  # Check columns for win
  col_win(board) ||
  # check right slant diagonals for win
  diag_right_win(board) ||
  # check left slant diagonals for win
  diag_left_win(board)
end

def row_win(board)
  win = false
  row = -1
  while !win && row > -7
    col = 0
    while !win && col < 3
      win = ((board[row][col] != nil) && (board[row][col] == board[row][col + 1]) &&
          (board[row][col] == board[row][col + 2]) &&
          (board[row][col] == board[row][col + 3]))
      if !win
        col += 1
      end
    end
    row -= 1
  end
  return win
end

def col_win(board)
  win = false
  col = -1
  while !win && col > -7
    row = 0
    while !win && row < 3
      win = ((board[row][col] != nil) && (board[row][col] == board[row + 1][col]) &&
          (board[row][col] == board[row + 2][col]) &&
          (board[row][col] == board[row + 3][col]))
      if !win
        row += 1
      end
    end
    col -= 1
  end
  return win
end

def diag_right_win(board)
  win = false
  row = 3
  while !win && row < 6
    col = 0
    while !win && col < 3
      win = ((board[row][col] != nil)&&(board[row][col] == board[row-1][col+1]) && (board[row][col] == board[row - 2][col + 2]) &&
          (board[row][col] == board[row - 3][col + 3]))
      if !win
        col += 1
      end
    end
    row += 1
  end
  return win
end

def diag_left_win(board)
  win = false
  row = 3
  while !win && row < 6
    col = -1
    while !win && col > -4
      win = ((board[row][col] != nil)&&(board[row][col] == board[row-1][col-1]) && (board[row][col] == board[row - 2][col - 2]) &&
          (board[row][col] == board[row - 3][col - 3]))
      if !win
        col -= 1
      end
    end
    row += 1
  end
  return win
end

def all_spots_taken?(board)
  # Check that all spots have been taken
  !board[0].include?(nil) &&
  !board[1].include?(nil) &&
  !board[2].include?(nil) &&
  !board[3].include?(nil) &&
  !board[4].include?(nil) &&
  !board[4].include?(nil)
end

def space_available?(board, space)
  playable = false
  count = -1
  while !playable && count > -7
    if(board[count][space] == nil)
      playable = true
    else
      count -= 1
    end
  end
  return playable
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
  iter = 0
  puts("-" * 25)
  while iter != board.count
    puts("|" + get_value(board[iter][0]) + "|" + get_value(board[iter][1]) + "|" + get_value(board[iter][2]) + "|" + get_value(board[iter][3]) + "|" + get_value(board[iter][4]) + "|" + get_value(board[iter][5]) + "|")
    puts("-" * 25)
    iter+= 1
  end
  puts("| 0 | 1 | 2 | 3 | 4 | 5 |")
end
def play_move(board,space,player)
  played = false
  count = -1
  while !played
    if(board[count][space] == nil)
      board[count][space] = player
      played = true
    end
    count -= 1
  end

end

board = [[nil]*6,[nil]*6,[nil]*6,[nil]*6,[nil]*6,[nil]*6]


start_game # this starts the game.  You can also call this in the repl interactive environment
