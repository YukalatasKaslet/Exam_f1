require_relative 'model'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    master
  end

  def master
    cards = instance_cards
    @view.test(cards)
    table_cards(cards)
  end

  def instance_cards
    a = CreditCard.new(name: "Amex", number: 2345673444, expiration: "12/15", cvc: 2345, status: [234, 567, 456, 567, 344])
    b = CreditCard.new(name: "ScotiaBank", number: 2345673744, expiration: "12/16", cvc: 2845, status: [234, 345, 456, 567, 344])
    c = CreditCard.new(name: "Bancomer", number: 2345673444, expiration: "12/15", cvc: 2645, status: [234, 345, 456, 567, 344])
    d = CreditCard.new(name: "Serfin", number: 2345473454, expiration: "12/20", cvc: 1345, status: [234, 345, 456, 567, 344])
    e = CreditCard.new(name: "BanCoppel", number: 2345373464, expiration: "12/18", cvc: 2445, status: [567, 345, 456, 567, 344])
    cards = [a,b,c,d,e]  
  end

  def table_cards(array)
    @view.table_cards(array)
  end

end#class

Controller.new