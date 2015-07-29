require_relative 'cell'

class Grid

  def bomb cell
    cell.bombed = true
  end

end