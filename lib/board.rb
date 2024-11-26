class Board
  attr_accessor :grid
  def initialize
    @grid = [[0, 1, 2], [3, 4, 5], [6, 7, 8]] 
  end

  def add_value(player)
    puts "Please enter a number between 0 and 8 to place your choice there: "
    @entry = gets.chomp.to_i
    for i in @grid
      for j in i
        if j == @entry
          @grid[@grid.find_index(i)][i.find_index(j)] = player.player_choice
        end
      end
    end
    
  end
end


