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

      if option == 1
        TicTacToe::HumanVsHuman.new.start_game
      elsif option == 2
        TicTacToe::HumanVsCpu.new.start_game
      elsif option == 3
        TicTacToe::CpuVsCpu.new.start_game
      end
    end
  end
end
