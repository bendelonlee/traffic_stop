require './test/test_helper'
require './lib/driver'
require './lib/vehicle'

class VehicleTest < Minitest::Test

  def setup
    @vehicle = Vehicle.new('2001', 'Honda', 'Civic')
  end

  def test_it_exists
    assert_instance_of Vehicle, @vehicle
  end

  def test_it_has_a_year
    assert_equal '2001', @vehicle.year
  end

  def test_it_has_a_make
    assert_equal 'Honda', @vehicle.make
  end

  def test_it_has_a_model
    assert_equal 'Civic', @vehicle.model
  end

  def test_it_has_no_driver_by_default
    assert_nil @vehicle.driver
  end

  def test_it_can_add_a_driver
    driver = Driver.new("Bob")
    @vehicle.add_driver(driver)
    assert_equal driver, @vehicle.driver
  end

  def test_speeding_returns_false_by_default
    refute @vehicle.speeding?
  end

  def test_vehicle_begins_speeding_when_commanded_to_speed
    @vehicle.speed
    assert @vehicle.speeding?
  end

end
