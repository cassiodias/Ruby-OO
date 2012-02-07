# @@ atributo de classe
class BankAccount
  attr_reader :money
  def initialize money
    @money = money
  end
  def self.open money
    new money #metodo estatico chamando o contrutor de bankaccount
  end
end

b = BankAccount.open 1000
puts b.money
