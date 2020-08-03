class OpenWeatherService

  def weather(params)
    param_data = {lat: params[:lat], lon: params[:lon], units: "imperial"}
    get_json("data/2.5/onecall", param_data)
  end

  def current_weather(params)
    param_data = {lat: params[:lat], lon: params[:lon], units: "imperial"}
    get_json("data/2.5/weather", param_data)
  end

  def conn
    Faraday.new(url: "https://api.openweathermap.org/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.params[:appid] = ENV['OPEN_WEATHER_KEY']
    end
  end

  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

end
