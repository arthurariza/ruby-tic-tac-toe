require_relative './player'

module TicTacToe
  class Human < Player
    def play(board)
      loop do
        spot = gets.chomp.to_i

        if valid_play?(spot, board)
          board[spot] = @mark
          break
        end
      end
    end
  end
end
