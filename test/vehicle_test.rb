require './test/test_helper'
require './lib/vehicle'

class VehicleTest < Minitest::Test
  def setup
    @vehicle = Vehicle.new
  end
  def test_it_exists
    assert_instance_of Vehicle, @vehicle
  end
end
