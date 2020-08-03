class HikingProjectService

  def weather(params)
    param_data = {}
    get_json("data/get-trails", param_data)
  end

  def conn
    Faraday.new(url: "https://www.hikingproject.com/data/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.params[:appid] = ENV['HIKING_API_KEY']
    end
  end


  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

end
