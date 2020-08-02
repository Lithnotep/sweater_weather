class OpenWeatherSearch

  def initialize(params)
    @params = params
  end

  def formatted_data
    data = OpenWeatherService.new.weather(@params)
    {
      current_data: {
                      data_time: data[:current][:dt],
                      sunrise: data[:current][:sunrise],
                      sunset: data[:current][:sunset],
                      temp: data[:current][:temp],
                      feels_like: data[:current][:feels_like],
                      visibility: data[:current][:visibility],
                      uv_index: data[:current][:uvi],
                      humidity: data[:current][:humidity],
                      weather_type: data[:current][:weather].first[:main],
                      weather_description: data[:current][:weather].first[:description],
                      weather_icon: data[:current][:weather].first[:icon],

                    },
      hourly_data: data[:hourly],
      daily_data: data[:daily]
    }
  end

end
