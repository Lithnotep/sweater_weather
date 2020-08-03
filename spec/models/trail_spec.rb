require 'rails_helper'

describe "trail model" do
  it "can instantiate" do

      location = "1"
      forecast = "2"
      trails = [1, 2, 3 ,4]

    trail = Trail.new(location, forecast, trails)
    expect(trail.location).to eq("1")
    expect(trail.forecast).to eq("2")
    expect(trail.trails).to eq([1, 2, 3 ,4])
  end
  it "can trail search" do
    params = {:lat=>39.738453, :lon=>-104.984853}
    location = "denver,co"
    search = TrailSearch.new(params, location).trails
    expect(search[:trails].first).to have_key(:name)
    expect(search[:trails].first).to have_key(:summary)
    expect(search[:trails].first).to have_key(:difficulty)
    expect(search[:trails].first).to have_key(:location)
    expect(search[:trails].first).to have_key(:distance)

  end
  it "can current_weather search" do
    params = {:lat=>39.738453, :lon=>-104.984853}

    search = OpenWeatherSearch.new(params).current_data

    expect(search).to have_key(:summary)
    expect(search).to have_key(:temperature)
  end

end

# {
#   "data": {
#     "id": "null",
#     "type": "trail",
#     "attributes": {
#       "location": "denver,co",
#       "forecast": {
#         "summary": "Cloudy with a chance of meatballs",
#         "temperature": "83"
#       },
#       "trails": [
#         {
#           "name": "Boulder Skyline Traverse",
#           "summary": "The classic long mountain route in Boulder."
#           "difficulty": "black"
#           "location": "Superior, Colorado"
#           "distance_to_trail": "23.008"
#         },
#         {
#           "name": "Bear Peak Out and Back",
#           "summary": "A must-do hike for Boulder locals and visitors alike!"
#           "difficulty": "black"
#           "location": "Boulder, Colorado"
#           "distance_to_trail": "30.098"
#         },
#         {...}
#       ]
#     }
#   }
# }
