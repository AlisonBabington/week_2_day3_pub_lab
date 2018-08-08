require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Martini", 8, 2)
    @drink2 = Drink.new("Picpoul", 6, 3)

    @pub = Pub.new("SuperPub", 250, [@drink1, @drink2])
  end

  def test_pub_has_name
    assert_equal("SuperPub", @pub.name)
  end






end
