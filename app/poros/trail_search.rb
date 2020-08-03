class TrailSearch

  def initialize(params, location)
    @params = params
    @from_location = location
  end

  def trails
    data = HikingProjectService.new.trails(@params)
      data[:trails].map do |trail|
        {
          name: trail[:name],
          summary: trail[:summary],
          difficulty: trail[:difficulty],
          location: trail[:location],
          distance: MapquestSearch.new({from: @from_location, to: trail[:location]}).directions_data
        }
      end
  end
end
