require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../Food.rb')
require "pry"

class CustomerTest < MiniTest::Test
  def setup
    @customer1 = Customer.new("John", 200.00, 23, 0)
    @customer2 = Customer.new("Laura", 90.00, 16, 0)
    @customer3 = Customer.new("Emily", 120.00, 28, 12)
    @drink1 = Drink.new("Martini", 8.30, 2)
    @drink2 = Drink.new("Picpoul", 6.00, 3)
    @pub = Pub.new("SuperPub", 250.00, [@drink1, @drink2])
    @food1 = Food.new("Pizza", 10.30, 3)
  end

  def test_customer_has_name
    assert_equal("John", @customer1.name)
  end

  def test_customer_has_money
    assert_equal(200, @customer1.wallet)
  end

  def test_customer_has_age
    assert_equal(23, @customer1.age)
  end

  def test_customer_has_drunkeness
    assert_equal(0, @customer1.drunkeness)
  end

  def test_buy_drink__wallet_value_decreased
    @customer1.buy_drink(@drink1, @pub)
    assert_equal(191.70, @customer1.wallet)
    assert_equal(258.30, @pub.till)
  end


  def test_customer_drunk
    @customer1.increase_drunkeness(@drink1)
    assert_equal(2, @customer1.drunkeness)
  end

  def test_customer_drunk__after_two_drinks
    @customer1.increase_drunkeness(@drink1)
    @customer1.increase_drunkeness(@drink2)
    assert_equal(5, @customer1.drunkeness)
  end



   def test_food_reduce_drunkeness
     @customer3.reduce_drunkeness(@food1)
     assert_equal(9, @customer3.drunkeness)
   end
end
