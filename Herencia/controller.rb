require_relative 'model'
require_relative 'view'

class ControllerHerencia
  def initialize
    @view = View.new
    master
  end

  def master
    athletes = instance_athletes
    @view.test1(athletes[0], athletes[1], athletes[2])
    @view.test2(athletes[0], athletes[1])
  end

  def instance_athletes
    runner  = Runner.new()
    swimmer = Swimmer.new(50,10)
    cyclist = Cyclist.new(70,27)
    athletes = [runner, swimmer, cyclist]
  end

end#class Controller
