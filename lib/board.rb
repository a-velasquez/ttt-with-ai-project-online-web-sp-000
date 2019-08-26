class Board
  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    self.cells = (Array.new(9, " "))
  end

  def display #Prints the Board
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    cells[input.to_i-1]
  end

  def full?
    cells.all? do |character|
      if character == "X" || character == "O"
        true
      else
        false
      end
    end
  end

  def board_count

  end

end
