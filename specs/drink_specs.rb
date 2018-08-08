require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

def setup
  @drink = Drink.new("Mojito", 8, 2)
end

def test_drink_has_name
  assert_equal("Mojito", @drink.name)
end






end
