require_relative './player'

module TicTacToe
  class Cpu < Player
    def play(board, player_mark)
      return if play_center?(board)

      loop do
        spot = find_best_move(board, player_mark)

        if valid_play?(spot, board.board)
          board.board[spot] = mark
          break
        end
      end
    end

    private

    def play_center?(board)
      if board.board[4] == 4
        board.board[4] = mark

        return true
      end

      false
    end

    def find_best_move(board, player_mark)
      available_spots = board.board.select { |spot| spot.is_a?(Integer) }

      available_spots.each do |spot|
        best_move = next_move_wins?(board, mark, spot)
        return best_move if best_move

        best_move = next_move_wins?(board, player_mark, spot)
        return best_move if best_move

        reset_spot(board, spot)
      end

      random_move(available_spots)
    end

    def next_move_wins?(board, mark, spot)
      board.board[spot] = mark

      return nil unless board.game_over?

      best_move = spot
      board.board[spot] = spot
      best_move
    end

    def reset_spot(board, spot)
      board.board[spot] = spot
    end

    def random_move(available_spots)
      n = rand(0..available_spots.count)
      available_spots[n]
    end
  end
end
