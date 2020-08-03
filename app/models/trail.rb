class Trail
  attr_reader :id, :location, :forecast, :trail
  def initialize(location, forecast, trail)
    @id = nil
    @location = location
    @forecast = forecast
    @trail = trail
  end

end
