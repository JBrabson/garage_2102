require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def setup
    @owner_1 = Owner.new('Regina George', 'Heiress')
  end

  def test_it_exists
    assert_instance_of Owner, @owner_1
  end
end
