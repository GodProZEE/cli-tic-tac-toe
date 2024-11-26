class Board
  attr_accessor :grid
  def initialize
    @grid = [[0, 1, 2], [3, 4, 5], [6, 7, 8]] 
  end
end

hi = Board.new
hi.grid.each do |elem|
  p elem
end
