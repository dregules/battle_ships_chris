require 'cell'

describe Cell do
  let(:grid) { double('grid', :bomb => subject.bombed=true)}

  it 'responds to #bombed?' do
    expect(subject).to respond_to :bombed?
  end

  describe '#bombed?' do
    it 'when cell created is false' do
      expect(subject.bombed).to be false
    end

    it 'updates to true when bombed' do
      grid.bomb subject
      expect(subject.bombed).to be true
    end

  end

  it 'responds to #ship?' do
    expect(subject).to respond_to :ship?
  end


end