class UnsplashService

  def picture(params)
    param_clean = params[:location].split(/,/).first
    param_data = {query: "#{param_clean} skyline"}
    get_json("search/photos", param_data)
  end

  def conn
    Faraday.new(url: "https://api.unsplash.com/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.params[:client_id] = ENV['UNSPLASH_KEY']
    end
  end


  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

end
