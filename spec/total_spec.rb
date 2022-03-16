require 'total'

describe Total do
  subject(:total) { described_class.new }

  describe '#total' do
    it 'should output total number of wheels and total of doors and winner' do
      dw = Doors_Wheels.new
      dw.doors('House', 8)
      dw.doors('Cupboard', 2)
      dw.wheels('Chair', 10)
      dw.wheels('Bike', 2)
      type = dw.type
      object = dw.object
      door_number = dw.door_number
      wheel_number = dw.wheel_number
      
      expect{subject.total(object, type, door_number, wheel_number)}.to output("\"Chair\"\n10\n\"Bike\"\n2\n\"TOTAL WHEELS: 12\"\n\"House\"\n8\n\"Cupboard\"\n2\n\"TOTAL DOORS: 10\"\n\"WHEELS WIN: 12\"\n").to_stdout
    end
  end
end