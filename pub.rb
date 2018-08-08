class Pub

  attr_reader(:name, :till, :drinks)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks || []
  end

  def take_money(drink)
    @till += drink.price
  end

end
