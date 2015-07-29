require_relative 'cell'


class Grid
attr_accessor :matrix

  def alphabet
    ("A".."Z").to_a
  end

  def alphabet_hash
    letter_numbers = {}
    alphabet.each_with_index {|item, index| letter_numbers[item] = index}
    letter_numbers
  end

  def bomb cell
    fail 'Cell already bombed!' if cell.bombed?
    cell.bombed = true
  end

  def split_coordinates(coordinates)
    coordinates_array = coordinates.split("")
  end

  def extract_x_coordinate(split_array)
    alphabet_hash[split_array[0]]
  end

  def extract_y_coordinate(split_array)
    split_array[1..3].join.to_i - 1
  end

  def matrix_builder size
    @matrix = (0...size).map{ Array.new(size) }
    populate_matrix
  end

  def populate_matrix
    @matrix = @matrix.map! {|inner_array| inner_array.map! {|x| x = Cell.new}}
  end

end
