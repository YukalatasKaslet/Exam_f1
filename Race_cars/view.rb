class View

  def initialize
    cls
    puts "Examen Fase1"
    puts "class RaceCar & class Team\n"
  end

  def menu
    printf "\t¿Qué deseas hacer?\n"
    printf "\t\"Predefinido\" para ejecutar el test predefinido\n"
    printf "\t\"Ingresar\" para formar un equipo\n"
    choice = gets.chomp
  end

  def test_cars(cars)
    cls
    puts "Esta es la velocidad promedio de cada carro"
    cars.each_with_index do |car, index|
      puts "\tcar#{index + 1}: #{car.average_speed} m/s"
    end
  end

  def test_team_average_speed(team)
      puts "Éste es el promedio de velocidades del equipo"
      puts team.average_speed_of_team
  end

  def test_team1
    puts "\nsearch( \"Power\" , team_one) == \"Power is a racer\""
  end

  def test_team2(team_one)
    puts "\nteam_one.average_speed_of_team"
    puts team_one.average_speed_of_team
  end

  def rules
    cls
    puts "Al crear un equipo éste solo contiene 5 carros"
    puts "Cada carro solo puede tener 5 laptime"
    puts "pulsa cualquier tecla para continuar..."
    gets.chomp
  end

  def instance_cars
    cls
    x = false
    car = []
    puts "Ingresa el nombre del carro"
    car << gets.chomp
    puts "Ingresa sus tiempos"
    t = gets.chomp
    t = t.split
    y = [car, t]
  end

  def new_team
    puts "Equipo Formado"
    puts "¿Deseas hacer un mini test al nuevo equipo? Y/N"
    choice = gets.chomp.downcase
  end

  def bye
    puts "bye bye :D"
  end

  def error
    puts "Opción no válida"
  end

  def cls
    system('clear')
  end

end#class View