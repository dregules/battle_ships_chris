require_relative 'cell'

class Grid

  def bomb cell
    fail 'Cell already bombed!' if cell.bombed?
    cell.bombed = true
  end

  def split_coordinates(coordinates)
    coordinates_array = coordinates.split("")
    # x_coordinate = coordinates_array[0]
    # y_coordinate = coordinates_array.delete[0].join

  end



end
