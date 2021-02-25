require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def setup
    @owner_1 = Owner.new('Regina George', 'Heiress')
    @car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
  end

  def test_it_exists
    assert_instance_of Owner, @owner_1
  end

  def test_it_has_attributes
    assert_equal "Regina George", @owner_1.name
    assert_equal "Heiress", @owner_1.occupation
  end

  def test_it_starts_with_no_cars
    assert_equal [], @owner_1.cars
  end

  def test_it_can_buy_cars
    @owner_1.buy('1967 Green Ford Mustang')
    assert_equal [@car_1], @owner_1.cars
  end
end
