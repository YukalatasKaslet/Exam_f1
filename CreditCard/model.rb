class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status

  def initialize(name:, number:, expiration:, cvc:, status:)
    @name       = name
    @number     = number
    @expiration = expiration
    @cvc        = cvc
    @status     = status
  end

end#class

