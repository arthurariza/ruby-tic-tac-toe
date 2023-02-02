require_relative './printer'
require_relative './board'
require_relative './human'
require_relative './cpu'

module TicTacToe
  class Game
    include TicTacToe::Printer

    def initialize
      @board = Board.new
      @human = Human.new('O')
      @cpu = Cpu.new('X')
    end

    def start_game
      print_board(@board.board)

      print_moves

      until @board.game_over? || @board.tie?
        @human.play(@board.board)

        @cpu.play(@board, @human.mark) if !@board.game_over? && !@board.tie?

        print_board(@board.board)
      end

      print_game_over
    end
  end
end
