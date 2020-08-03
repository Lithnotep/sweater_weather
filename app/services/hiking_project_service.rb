class HikingProjectService

  def trails(params)
    param_data = {lat: params[:lat], lon: params[:lon]}
    binding.pry
    get_json("data/get-trails", param_data)
  end

  def conn
    Faraday.new(url: "https://www.hikingproject.com/data/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.params[:key] = ENV['HIKING_API_KEY']
    end
  end


  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

end
