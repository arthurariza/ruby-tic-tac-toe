module TicTacToe
  class Board
    attr_reader :board

    def initialize
      @board = Array.new(9) { |i| i }
    end

    def game_over?
      @board[0..2].uniq.length == 1 ||
        @board[3..5].uniq.length == 1 ||
        @board[6..8].uniq.length == 1 ||
        [@board[0], @board[3], @board[6]].uniq.length == 1 ||
        [@board[1], @board[4], @board[7]].uniq.length == 1 ||
        [@board[2], @board[5], @board[8]].uniq.length == 1 ||
        [@board[0], @board[4], @board[8]].uniq.length == 1 ||
        [@board[2], @board[4], @board[6]].uniq.length == 1
    end

    def tie?
      @board.all? { |spot| %w[X O].include?(spot) }
    end
  end
end
