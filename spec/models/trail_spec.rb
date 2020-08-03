require 'rails_helper'

describe "trail model" do
  xit "can instantiate" do
    data = {
      location: "1",
      forecast: "2",
      trails: "3"
    }
    forecast = Trail.new(data)
    expect(forecast.current_weather).to eq("1")
    expect(forecast.hourly_weather).to eq("2")
    expect(forecast.daily_weather).to eq("3")
  end
  it "can search" do
    params = {:lat=>39.738453, :lon=>-104.984853}
    location = "denver,co"
    TrailSearch.new(params, location).trails

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
