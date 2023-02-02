require_relative './player'
require_relative './printer'

module TicTacToe
  class Cpu < Player
    include Printer

    HARD_DIFFICULTY = 2

    def initialize(mark)
      super(mark)
      @difficulty = difficulty
    end

    def play(board, player_mark)
      return if hard_difficulty? && play_center?(board)

      loop do
        spot = find_best_move(board, player_mark)

        if valid_play?(spot, board.board)
          board.board[spot] = mark
          break
        end
      end
    end

    private

    def difficulty
      print_cpu_difficulty_options

      loop do
        difficulty = gets.chomp.to_i
        return difficulty if [1, 2].include?(difficulty)

        print_invalid_option
      end
    end

    def hard_difficulty?
      @difficulty == HARD_DIFFICULTY
    end

    def play_center?(board)
      if board.board[4] == 4
        board.board[4] = mark

        return true
      end

      false
    end

    def find_best_move(board, player_mark)
      available_spots = board.board.select { |spot| spot.is_a?(Integer) }

      if hard_difficulty?
        available_spots.each do |spot|
          best_move = next_move_wins?(board, mark, spot)
          return best_move if best_move

          best_move = next_move_wins?(board, player_mark, spot)
          return best_move if best_move

          reset_spot(board, spot)
        end
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
      spot = rand(0..available_spots.count - 1)
      available_spots[spot]
    end
  end
end
