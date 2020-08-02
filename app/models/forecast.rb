class Forecast
  attr_reader :id, :current_weather, :hourly_weather, :daily_weather
  def initialize(data)
    @id = nil
    @current_weather = data[:current_data]
    @hourly_weather = data[:hourly_data]
    @daily_weather = data[:daily_data]
  end

end
