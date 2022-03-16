require './lib/doors'

describe Doors_Wheels do

  subject(:dw) { described_class.new }

  it 'adjusts amount of doors total' do
    dw.doors('house', 8)
    dw.doors('cupboard', 5)
    expect(dw.door_number).to eq(13)
  end

  it 'adjusts amount of wheels total' do
    dw.doors('chair', 10)
    dw.doors('bike', 2)
    expect(dw.door_number).to eq(12)
  end
end

  