module TicTacToe
  module Printer
    MOVES = 'Enter [0-8]:'.freeze
    GAME_OVER = 'Game over'.freeze
    INVALID_MOVE = 'Invalid Move! Please Try Again'.freeze
    CLEAR = `clear`.freeze

    def print_moves
      puts MOVES
    end

    def print_game_over
      puts GAME_OVER
    end

    def print_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} \n===+===+===\n #{board[3]} | #{board[4]} | #{board[5]} \n===+===+===\n #{board[6]} | #{board[7]} | #{board[8]} \n"
    end

    def print_invalid_move
      puts INVALID_MOVE
    end

    def clear_console
      puts CLEAR
    end
  end
end
