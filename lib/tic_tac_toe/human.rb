require_relative './player'
require_relative './printer'

module TicTacToe
  class Human < Player
    include Printer

    def play(board)
      loop do
        spot = gets.chomp.to_i

        if valid_play?(spot, board)
          board[spot] = @mark
          break
        end

        print_invalid_move
        print_moves
      end
    end
  end
end
