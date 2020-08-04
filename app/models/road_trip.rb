class RoadTrip
  attr_reader :id, :origin, :destination, :travel_time, :arrival_forecast
  def initialize(data)
    @id = nil
    @origin = data[:current_data]
    @destination = data[:hourly_data]
    @travel_time = data[:daily_data]
    @arrival_forecast = data[:daily_data]
  end

end
