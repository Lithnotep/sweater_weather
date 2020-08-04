require 'rails_helper'

describe "RoadTrip API" do
  it "can get road_trip", :vcr do
    post "/api/v1/road_trip", params:{
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
      "api_key": "jgn983hy48thw9begh98h4539h4"
      }
      expect(response).to be_successful
      roadtrip = JSON.parse(response.body)
      expect(road["data"]["attributes"]).to have_key("origin")
      expect(road["data"]["attributes"]).to have_key("destination")
      expect(road["data"]["attributes"]).to have_key("travel_time")
      expect(road["data"]["attributes"]).to have_key("arrival_forecast")
  end
end
