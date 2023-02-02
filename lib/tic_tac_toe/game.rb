require_relative './printer'
require_relative './board'
require_relative './human'
require_relative './cpu'

module TicTacToe
  class Game
    include Printer

    def initialize
      @board = Board.new
      @human = Human.new('O')
      @cpu = Cpu.new('X')
    end

    def start_game
      until @board.game_over? || @board.tie?
        clear_console
        print_board(@board.board)
        print_moves

        @human.play(@board.board)

        @cpu.play(@board, @human.mark) if !@board.game_over? && !@board.tie?
      end

      print_game_over
    end
  end
end
