class Food
require 'pry'
  attr_reader(:name, :price, :rejuvenation_level)

  def initialize(name, price, rejuvenation_level)
    @name = name
    @price = price
    @rejuvenation_level = rejuvenation_level
  end



end
