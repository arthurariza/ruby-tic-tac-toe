# frozen_string_literal: true

require_relative './human_vs_human'
require_relative './human_vs_cpu'
require_relative './cpu_vs_cpu'
require_relative './printer'

module TicTacToe
  class Main
    extend Printer

    def self.play
      print_menu_options

      option = gets.chomp.to_i

      case option
      when 1
        TicTacToe::HumanVsHuman.new.start_game
      when 2
        TicTacToe::HumanVsCpu.new.start_game
      when 3
        TicTacToe::CpuVsCpu.new.start_game
      end
    end
  end
end
