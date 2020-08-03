class Trail
  attr_reader :id,
  def initialize(location, forecast, trail)
    @id = nil
    @location = location
    @forecast = forecast
    @trail = trail
  end

end
