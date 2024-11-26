class Player
  attr_reader :player_choice
  attr_accessor :turn

  def initialize
    @turn = false
    puts "Please choose between 0 and 1, 0 means O, 1 means X"
    @player_choice = gets.chomp.to_i
    while @player_choice != 0 && @player_choice != 1
      puts "Wrong choice, please choose between 0 and 1"
      @player_choice = gets.chomp
    end

    @player_choice = if @player_choice == 0
                       "O"
                     else
                       "X"
                     end
  end

  def swap_turn
    @turn = @turn.!
  end
end
