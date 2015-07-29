require 'grid'

describe Grid do
  let(:unbombed_cell) { double('cell', :bombed? => false, :ship? => false)}
  let(:bombed_cell) { double('cell', :bombed? => true, :ship? => false)}

  it 'responds to #bomb' do
    expect(subject).to respond_to(:bomb).with(1).argument
  end

  it 'does not allow to bomb same cell twice' do
    expect { subject.bomb bombed_cell }.to raise_error 'Cell already bombed!'
  end

  it "responds to #split_coordinates" do
    expect(subject).to respond_to(:split_coordinates).with(1).argument
  end

  it "splits coordinates" do
    expect(subject.split_coordinates("A1")).to eq ["A", "1"]
  end

  it "respond to #extract_x_coordinate" do
    expect(subject).to respond_to(:extract_x_coordinate).with(1).argument
  end

  it "extracts the true x coordinate" do
    array_of_coordinates = subject.split_coordinates("A1")
    expect(subject.extract_x_coordinate(array_of_coordinates)).to eq 0
  end

  it "respond to #extract_y_coordinate" do
    expect(subject).to respond_to(:extract_y_coordinate).with(1).argument
  end

  it "extracts the true y coordinate" do
    # array_of_coordinates = subject.split_coordinates("A1")
    expect(subject.extract_y_coordinate(["A","10"])).to eq 9
  end

  it "has a #matrix_builder method" do
    expect(subject).to respond_to(:matrix_builder).with(1).argument
  end

  it 'is initialized with a 2d array full of Cells' do
    x_coordinate = subject.extract_x_coordinate(["F","6"])
    y_coordinate = subject.extract_y_coordinate(["F","6"])
    subject.matrix_builder(10)
    expect(subject.matrix[x_coordinate][y_coordinate]).to eq(unbombed_cell)
  end



end
