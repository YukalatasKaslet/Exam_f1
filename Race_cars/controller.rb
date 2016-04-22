require_relative 'model'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    master
  end

  def master
    choice = @view.menu
    case choice.downcase
      when "predefinido"     then test1
      when "ingresar" then new_team
      else
        @view.error
    end
  end

  def test1
    cars = [ RaceCar.new( "Force",     [10,12,15,14,13]  ),
             RaceCar.new( "Power",     [12,12,15,13,13]  ),
             RaceCar.new( "Passwater", [9,8,7,9,10]      ),
             RaceCar.new( "Banjo",     [6,8,6,7,9]       ),
             RaceCar.new( "Duck",      [10,12,11,10,11]  ) ]
    @view.test_cars(cars)
    team_one = Team.new(cars)
    @view.test_team1
    search("Power", team_one)
    @view.test_team2(team_one)
  end

  def search(name, team)
    x = false
    cars = team.cars
    cars.each do |car|
      if name == car.name
        x = true
      end
    end 
    puts "#{name} is a racer" if x == true 
  end

  def new_team
    cars = []
    i = 1
    while i != 5
      car = @view.instance_cars
      if car.count > 5
        return @view.error
      end
      car[1].each do |e|
        if e.is_a? String
          return @view.error
        end
      end
      car = RaceCar.new(car[0], car[1])
      cars << car
      i += 1
    end
    new_team = Team.new(cars)
    choice = @view.new_team
    if choice == "y"
      test(new_team)
    elsif choice == "n"
      @view.bye
    else
      @view.error
    end
  end

  def test(new_team)
    @view.rules
    cars = new_team.cars
    @view.test_cars(cars)
    @view.test_team_average_speed(new_team)
  end

end#class Controller

Controller.new