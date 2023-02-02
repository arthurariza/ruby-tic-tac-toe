require_relative './game'

module TicTacToe
  class HumanVsHuman < Game
    def initialize
      super
      @player_one = Human.new('O')
      @player_two = Human.new('X')
    end

    def start_game
      print_greetings

      until game_over_or_tie
        print_board(@board.board)
        print_moves

        @player_one.play(@board.board)

        print_board(@board.board)
        print_moves

        @player_two.play(@board.board) if not_game_over_and_tie
      end

      print_game_over
    end
  end
end
