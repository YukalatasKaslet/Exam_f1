require_relative 'CreditCard/model'
require_relative 'CreditCard/controller'
require_relative 'CreditCard/view'
require_relative 'Herencia/model'
require_relative 'Herencia/controller'
require_relative 'Herencia/view'
require_relative 'Race_cars/model'
require_relative 'Race_cars/controller'
require_relative 'Race_cars/view'

class MenuExam

  def initialize
    master
  end

  def master
    system ('clear')
    puts "Bienvenido al Examen F1 de Lau :D"
    puts "Elige el número de la opción que desees realizar"
    puts "\t1)CreditCard"
    puts "\t2)Herencia"
    puts "\t3)Race_cars"
    choice = gets.chomp.to_i
    case choice
    when 1 then ControllerCreditCard.new
    when 2 then ControllerHerencia.new
    when 3 then ControllerRaceCars.new
    else
      "Opción no válida"
    end
        
  end

end#class

MenuExam.new