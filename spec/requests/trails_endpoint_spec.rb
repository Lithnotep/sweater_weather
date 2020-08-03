require 'rails_helper'

describe " Trails API" do
  it "can get trails" do

    get "/api/v1/trails?location=denver,co"

    expect(response).to be_successful
    trail = JSON.parse(response.body)
    expect(trail).to have_key("data")
    expect(trail["data"]).to have_key("attributes")
    expect(trail["data"]["attributes"]).to have_key("location")
    expect(trail["data"]["attributes"]).to have_key("forecast")
    expect(trail["data"]["attributes"]).to have_key("trails")

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
# Your API will return:
# current forecast for the start location
# name of the trail
# summary of each trail
# difficulty of each trail
# location of each trail
# estimated travel time for each trail
