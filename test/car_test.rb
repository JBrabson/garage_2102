require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'

class CarTest < Minitest::Test

  def test_it_exists
    car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    assert_instance_of Car, car_1
  end
end
