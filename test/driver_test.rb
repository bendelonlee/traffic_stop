require './test/test_helper'
require './lib/driver'

class DriverTest < Minitest::Test
  def setup
    @driver = Driver.new
  end

  def test_it_exists
    assert_instance_of Driver, @driver
  end
end
