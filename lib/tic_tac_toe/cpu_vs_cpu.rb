require_relative './game'

module TicTacToe
  class CpuVsCpu < Game
    def initialize
      super
      @cpu_one = Cpu.new('O')
      @cpu_two = Cpu.new('X')
    end

    def start_game
      print_greetings
      print_board(@board.board)

      until game_over_or_tie
        print_moves

        @cpu_one.play(@board, @cpu_two.mark)

        @cpu_two.play(@board, @cpu_one.mark) if not_game_over_and_tie
        print_board(@board.board)
      end

      print_game_over
    end
  end
end
