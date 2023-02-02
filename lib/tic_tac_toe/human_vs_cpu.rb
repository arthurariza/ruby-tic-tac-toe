# frozen_string_literal: true

require_relative './game'

module TicTacToe
  class HumanVsCpu < Game
    def initialize
      super
      @player = Human.new('O')
      @cpu = Cpu.new('X')
    end

    def start_game
      print_greetings
      print_board(@board.board)

      until game_over_or_tie
        print_moves

        @player.play(@board.board)

        @cpu.play(@board, @player.mark) if not_game_over_and_tie
        print_board(@board.board)
      end

      print_game_over
    end
  end
end
