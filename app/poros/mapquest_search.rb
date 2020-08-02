class MapquestSearch

  def initialize(params)
    @params = params
  end

  def formatted_data
    data = MapquestService.new.locations(@params)
    {
      lat: data[:results].first[:locations].first[:latLng][:lat],
      lon: data[:results].first[:locations].first[:latLng][:lng]
    }
  end

end
