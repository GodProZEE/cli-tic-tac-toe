class Board
  attr_accessor :grid, :number_of_turns

  @@win_conditions = [[0, 1, 2],
                      [3, 4, 5],
                      [6, 7, 8],
                      [0, 3, 6],
                      [1, 4, 7],
                      [2, 5, 8],
                      [0, 4, 8],
                      [2, 4, 6]]

  def initialize
    @grid = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    @number_of_turns = 0
  end

  def add_value(player)
    puts "Please enter a number between 0 and 8 to place your choice there: "
    @entry = gets.chomp.to_i
    @grid.each do |i|
      i.each do |j|
        next unless j == @entry

        @grid[@grid.find_index(i)][i.find_index(j)] = player.player_choice
        @number_of_turns += 1
        return true
      end
    end
    false
  end

  def element_picker(value)
    @grid.each do |i|
      i.each do |j|
        return j if @grid.flatten[value] == j
      end
    end
  end

  def check_win
    @@win_conditions.each do |condition|
      if element_picker(condition[0]) == element_picker(condition[1]) && element_picker(condition[1]) == element_picker(condition[2])
        puts "Win"
        return true
      end
    end
    false
  end
end
