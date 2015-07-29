require 'grid'

describe Grid do

  it 'responds to #bomb' do
    expect(subject).to respond_to(:bomb).with(1).argument
  end

end