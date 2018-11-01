class Vehicle
  attr_reader :year, :make, :model, :driver
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @driver = nil
    @speeding = false
  end

  def add_driver(driver)
    @driver = driver
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end


end
