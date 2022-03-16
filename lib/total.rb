require_relative 'doors.rb'
# require_relative 'wheels.rb'

class Total

  def total(object, type, door_number, wheel_number)
    object.each do |obj|
      p obj
    end
    p "TOTAL WHEELS: #{wheel_number}"

    type.each do |type|
      p type
    end
    p "TOTAL DOORS: #{door_number}"

    whats_more?(door_number, wheel_number)
  end

  def whats_more?(door_number, wheel_number)
    if door_number > wheel_number
      p "DOORS WIN: #{door_number}" 
    else 
      p "WHEELS WIN: #{wheel_number}" 
    end
  end

end

