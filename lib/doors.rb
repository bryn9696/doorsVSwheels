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



end