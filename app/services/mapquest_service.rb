class MapquestService

  def locations(params, station_location)
    param_data = {from: params[:location],to: station_location}
    get_json("directions/v2/route", param_data)
  end

  def conn
    Faraday.new(url: "http://www.mapquestapi.com/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.params[:key] = ENV['MAPQUEST_API_KEY']
    end
  end


  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

end
