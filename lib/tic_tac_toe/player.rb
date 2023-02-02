module TicTacToe
  class Player
    attr_reader :mark

    def initialize(mark)
      @mark = mark
    end

    def play
      raise 'Implement this method!'
    end

    private

    def valid_play?(spot, board)
      spot.between?(0, 8) && board[spot].is_a?(Integer)
    end
  end
end
