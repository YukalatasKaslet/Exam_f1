class View
  def initialize
    cls
    puts "Examen Fase 1"
    puts "class CreditCard"
  end

  def test(cards)
    cards.each do |card|
       puts "#{card.name} responds to:"
       puts "\tName: #{card.respond_to?(:name) == true}"
       puts "\tNumber: #{card.respond_to?(:number) == true}"
       puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
       puts "\tcvc: #{card.respond_to?(:cvc) == true}"
       puts "\tGet status: #{card.respond_to?(:status) == true}"
       puts "\tSet status: #{card.respond_to?(:status=) == true}"
       puts "\n\n"
    end
  end

  def table_cards(cards)
    printf "|     name      |     number    | expiration | cvc  |\t\tstatus\t\t  |"
    printf "\n"
    printf "+---------------+---------------+------------+------+-----------------------------+\n"
    x = ""
    cards.each_with_index do |card, index|
      x = "       " if index == 0
      x = " " if index == 1
      x = "   " if index == 2
      x = "     " if index == 3
      x = "  " if index == 4
      printf "|    #{card.name}#{x}|   #{card.number}  |   #{card.expiration}    | #{card.cvc} |\t#{card.status} |\n"
    end
  end

  def cls
    system('clear')
  end
  

end#class