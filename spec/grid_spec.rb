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



end
