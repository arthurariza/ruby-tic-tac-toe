# frozen_string_literal: true

module TicTacToe
  module Printer
    MOVES = 'Enter [0-8]:'
    GAME_OVER = 'Game over'
    INVALID_MOVE = 'Invalid Move! Please Try Again'
    GREETINGS = 'Welcome to Tic-Tac-Toe'
    INVALID_OPTION = 'Invalid Option! Please Try Again'
    CPU_DIFFICULTY = 'Cpu difficulty: Easy(1) Hard(2)'

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

    def print_invalid_option
      puts INVALID_OPTION
    end

    def print_greetings
      puts GREETINGS
    end

    def print_cpu_difficulty_options
      puts CPU_DIFFICULTY
    end

    def print_menu_options
      puts 'Welcome to Tic-tac-toe'
      puts 'Press (1) to play Human Vs Human'
      puts 'Press (2) to play Human Vs Cpu'
      puts 'Press (3) to play Cpu Vs Cpu'
    end
  end
end
