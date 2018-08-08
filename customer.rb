require "pry"

class Customer


  attr_reader(:name, :wallet, :age, :drunkeness)
  attr_writer(:drunkeness)

  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end

  def buy_drink(drink, pub)
    @wallet -= drink.price
    pub.take_money(drink, pub)
  end

  def increase_drunkeness(drink)
    @drunkeness += drink.alcohol_level
  end


  def reduce_drunkeness(food)
  @drunkeness -= food.rejuvenation_level
  end
end
