require 'board'

describe Board  do

  it "can shoot at a coordinate" do
    expect(subject).to respond_to(:shoot).with(1).argument
  end
end
