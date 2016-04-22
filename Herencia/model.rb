class Athlete
  attr_accessor :total_distance, :total_time
  def initialize(distance = 0, time = 0)
    @total_distance = distance
    @total_time     = time
    speed_record(speed)
  end

  def speed
    if @total_distance == 0
      @speed = 0
    else
      speed  = @total_distance / @total_time.to_f
      @speed = speed.round(2)
    end
    @speed
  end

  def speed_record(speed)
    speeds = []
    speeds << speed
    speeds.max
  end

  def new_workout(distance, time)
    @total_distance = distance
    @total_time     = time
    speed_record(speed)
  end

end#class

class Runner < Athlete
  def run
    "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed} m/s"
  end
end#class Runner

class Swimmer < Athlete
  def swim
    "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed} m/s"
  end
end#class Swimmer

class Cyclist < Athlete
  def ride_bike
    "Ride #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed} m/s"#???
  end
end#class Cyclist