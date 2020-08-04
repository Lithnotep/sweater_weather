class RoadTrip
  attr_reader :id, :origin, :destination, :travel_time, :arrival_forecast
  def initialize(data)
    @id = nil
    @origin = data[:origin]
    @destination = data[:destination]
    @travel_time = data[:travel_time]
    @arrival_forecast = data[:arrival_forecast]
  end

end
