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

  def check_drunkeness(customer)
    if customer.drunkeness >= 10
      return true
    end
    return false
  end

  def serve_customer(drink, pub, customer)
    if pub.check_drunkeness(customer) == true
      return "Sorry, you're too drunk"
    elsif pub.checks_age(customer) == false
      return "Sorry, you're too young to buy a drink"
    else customer.buy_drink(drink, pub)
    end
  end

end
