LAPDISTANCE = 100

class RaceCar
  attr_reader :name
  def initialize(name, laptimes)
    @name     = name
    @laptimes = laptimes
    car_speed
  end

  def car_speed
    speeds = []
    @laptimes.each do |laptime|
      speeds << LAPDISTANCE/laptime.to_f
    end
    speeds
  end

  def average_speed
    array_speeds = car_speed
    sum = 0
    array_speeds.each do |speed|
      sum += speed
    end
    average = (sum / array_speeds.count.to_f).round(2)
  end

  def car_level
    speed = average_speed
    return "Avanzado"     if speed < 9
    return "Medio"        if speed < 10
    return "Normal"       if speed < 12
    return "Principiante" if speed > 12
  end


end#class RaceCar


class Team

attr_reader :cars

  def initialize(cars)
    @cars = cars
    speeds_of_cars
  end

  def speeds_of_cars
    speeds = []
    @cars.each do |car|
      speeds << car.average_speed
    end
    speeds
  end

  def average_speed_of_team
    speeds = speeds_of_cars
    sum = 0
    speeds.each do |speed|
      sum += speed
    end
    speed_of_team = ( sum / speeds.count.to_f ).round(2)
  end


end#class Team



