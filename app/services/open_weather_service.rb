class OpenWeatherService


  def conn
    Faraday.new(url: "https://api.openweathermap.org/data/2.5") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.params[:appid] = ENV['OPEN_WEATHER_KEY']
    end
  end


  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

end
