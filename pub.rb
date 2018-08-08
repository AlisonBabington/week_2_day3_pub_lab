class Pub

  attr_reader(:name, :till, :drinks)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks || []
  end

  def take_money(drink, pub)
    @till += drink.price
  end

  def checks_age(customer)
    if customer.age >= 18
      return true
    end
    return false
  end

end
