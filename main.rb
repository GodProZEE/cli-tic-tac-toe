require_relative "lib/board"
require_relative "lib/player"

board = Board.new
player1 = Player.new
player2 = Player.new

# Changes the turn for player 1 to have opposite turns at all times.
player1.swap_turn

def swap_turns(player1, player2)
  player1.swap_turn
  player2.swap_turn
end

def display_board(board)
  board.grid.each do |elem|
    p elem
  end
end

def play_game(board, player1, player2)
  while board.number_of_turns < 9 && !board.check_win
    if player1.turn == true
      swap_turns(player1, player2) if board.add_value(player1)
    elsif board.add_value(player2)
      swap_turns(player1, player2)
    end

    display_board(board)

  end
end

play_game(board, player1, player2)
