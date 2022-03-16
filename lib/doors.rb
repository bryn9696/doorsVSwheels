require_relative 'total.rb'
# require_relative 'wheels.rb'

class Doors_Wheels

  attr_reader :door_number, :type, :wheel_number, :object
  def initialize
    @door_number = 0
    @type = []
    @wheel_number = 0
    @object = []
    # @total = Total.new
  end

  def doors(type, doors)
    @door_number += doors
    @type.push(type, doors)
  end

  def wheels(object, wheels)
    @wheel_number += wheels
    @object.push(object, wheels)
  end
  
  def show
    @total.total(@object, @type, @door_number, @wheel_number)
  end

end