require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')
require_relative('../Food.rb')

class FoodTest < MiniTest::Test
def setup
  @food1 = Food.new("Pizza", 10.30, 3)
end

def test_food_has_name
  assert_equal("Pizza", @food1.name)
end

def test_food_has_price
  assert_equal(10.30, @food1.price)
end

def test_food_has_rejuvenation_level
  assert_equal(3, @food1.rejuvenation_level)
end

end
