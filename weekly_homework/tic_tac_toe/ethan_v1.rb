require 'pry'
# This one is just going to be for me to figure out all the parts to this
# No classes
# No loops

#

def main_loop
  print_game_board(instruction_board)
  puts "Choose a number to start the game"

  board = initialize_board
  users = ['X', 'O']

  user_switcher = 0

  while true
    user = users[user_switcher]
    puts "\n\n"
    print 'Enter a number: '
    input = gets.chomp

    unless valid_input?(input)
      puts "not a valid selection, try again"
      next
    end

    if input == 'debug'
      binding.pry
      next
    end

    spot_choice = input.to_i
    if spot_taken?(board, spot_choice)
      puts "spot has already been taken, please try again"
      next
    end

    fill_in_spot(board, spot_choice, user)

    if check_for_win(board)
      print_game_board(board)
      puts "User #{user} has won the game!"
      break
    end

    if all_spaces_taken(board)
      print_game_board(board)
      puts "Cats game.  No winner"
      break
    end

    user_switcher = (user_switcher + 1) % 2
    print_game_board(board)
  end
end

def initialize_board
  # Setup board as a single 9 index array
  board = []
  board[8] = nil  ## this sets all 9 spaces to nil

  board
end

def all_spaces_taken(board)
  !board.include?(nil)
end

def check_for_win(board)
  check_for_horizontal_win(board) ||
  check_for_vertical_win(board) ||
  check_for_diagonal_win(board)
end

def check_for_horizontal_win(board)
  first_row = is_win?(board[0], board[1], board[2])
  second_row = is_win?(board[3], board[4], board[5])
  third_row = is_win?(board[6], board[7], board[8])

  first_row || second_row || third_row
end

def check_for_vertical_win(board)
  first_column = is_win?(board[0], board[3], board[6])
  second_column = is_win?(board[1], board[4], board[7])
  third_column = is_win?(board[2], board[5], board[8])

  first_column || second_column || third_column
end

def check_for_diagonal_win(board)
  first_diag = is_win?(board[0], board[4], board[8])
  second_diag = is_win?(board[2], board[4], board[6])

  first_diag || second_diag
end

def is_win?(item1, item2, item3)
  all_same?(item1, item2, item3) && item1 != nil
end

def all_same?(item1, item2, item3)
  item1 == item2 && item2 == item3
end

def fill_in_spot(board, spot_choice, user)
  board[spot_choice] = user
end

def spot_taken?(board, spot)
  board[spot] != nil
end

def valid_input?(input)
  valid_inputs = ["0", "1", "2", "3", "4", "5", "6", "7", "8", 'debug']

  valid_inputs.include?(input)
end

def instruction_board
  board = []
  9.times { |i| board << i }

  board
end


def print_game_board(board)
  new_board = replace_nils_with_spaces(board)

  puts new_board[0..2].join(' | ')
  print_divider
  puts new_board[3..5].join(' | ')
  print_divider
  puts new_board[6..8].join(' | ')
end

def print_divider
  puts '-' * 9
end

def replace_nils_with_spaces(board)
  board.map{ |space| space || " " }
end

main_loop
