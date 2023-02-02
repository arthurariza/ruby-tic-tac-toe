require_relative './printer'
require_relative './board'
require_relative './human'
require_relative './cpu'

module TicTacToe
  class Game
    include Printer

    def initialize
      @board = Board.new
    end

    private

    def game_over_or_tie
      @board.game_over? || @board.tie?
    end

    def not_game_over_and_tie
      !@board.game_over? && !@board.tie?
    end
  end
end
