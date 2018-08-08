require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Martini", 8.30, 2)
    @drink2 = Drink.new("Picpoul", 6.00, 3)
    @customer1 = Customer.new("John", 200.00, 23, 0)
    @pub = Pub.new("SuperPub", 250.00, [@drink1, @drink2])
  end

  def test_pub_has_name
    assert_equal("SuperPub", @pub.name)
  end

  def test_pub_has_money
    assert_equal(250.00, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal([@drink1, @drink2], @pub.drinks)
  end

  def test_till_takes_money
    @pub.take_money(@drink1, @pub)
    assert_equal(258.30, @pub.till)
  end

  def test_pub_checks_age__true
    @pub.checks_age(@customer1)
    assert_equal(true, @pub.checks_age(@customer1))
  end


end
