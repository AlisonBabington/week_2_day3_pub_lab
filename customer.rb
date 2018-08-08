require "pry"

class Customer


  attr_reader(:name, :wallet, :age, :drunkeness)

  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end

  def buy_drink(drink, pub, customer)
    if pub.checks_age(customer) == false
      return "Sorry, you're too young to buy a drink"
    else
    @wallet -= drink.price
    pub.take_money(drink, pub)
    end
  end

  def increase_drunkeness(drink)
    @drunkeness += drink.alcohol_level
  end

end
