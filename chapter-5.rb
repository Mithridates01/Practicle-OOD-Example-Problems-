class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end

end

class Mechanic

  def prepare_trip(trip)
    prepare_bicycles(trip.bicycles)
  end

  def prepare_bicycles(bicycles)
    # .............
  end
end

class TripCoordinator
  def prepare_trip(trip)
    self.buy_food(trip.customers)
  end

  def buy_food()
    # .............
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    self.gas_up(vehicle)
    self.fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    # .............
  end

  def fill_water_tank(vehicle)
    # .............
  end
end
