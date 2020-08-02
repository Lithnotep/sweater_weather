class MapquestService

  def locations(params)
    param_data = {location: params[:location]}
    get_json("geocoding/v1/address", param_data)
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
