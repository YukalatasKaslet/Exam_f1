class View

  def initialize
    cls
    puts "Examen Fase 1"
    puts "Herencia"
  end

  def test1(runner, swimmer, cyclist)
    athletes = [runner, swimmer, cyclist] #no mande el array athletes de manera directa por que las últimas 3 pruebas nunca se cumplían
    athletes.each do |athlete|
      #¿qué tipo de atleta es?
      puts "#{athlete.class} responds to:"
      puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
      puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
      puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
      puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
      puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
      puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
      puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
      puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
      puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
      puts "\n\n"
    end
  end

  def test2(runner, swimmer)
    puts "runner.run == Ran 0 meters, time: 0 seconds, speed: 0 m/s"
    puts runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
    runner.new_workout(20,7)
    puts "\nrunner.new_workout(20,7)"
    puts "runner.run ==  Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"
    puts runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"
    puts "\nswimmer.swim == Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
    puts swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
  end

  def cls
    system('clear')
  end

end#class