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

  it "responds to #convert_coordinates" do
    expect(subject).to respond_to(:convert_coordinates).with(1).argument
  end



end
