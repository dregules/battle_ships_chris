require_relative 'cell'

class Grid

  def bomb cell
    fail 'Cell already bombed!' if cell.bombed?
    cell.bombed = true
  end
end