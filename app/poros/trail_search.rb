class TrailSearch

  def initialize(params, location)
    @params = params
    @from_location = location
  end

  def trails
    data = HikingProjectService.new.trails(@params)
    new = {
      trails: data[:trails].map do |trail|
        search_params = {from: @from_location, to: trail[:location]}
        {
          name: trail[:name],
          summary: trail[:summary],
          difficulty: trail[:difficulty],
          location: trail[:location],
          distance: MapquestSearch.new(search_params).directions_data
        }
      end
    }
    binding.pry
  end

end
# {
#           "name": "Boulder Skyline Traverse",
#           "summary": "The classic long mountain route in Boulder."
#           "difficulty": "black"
#           "location": "Superior, Colorado"
#           "distance_to_trail": "23.008"
#         }
