require 'rails_helper'

describe "RoadTrip API" do
  it "can get road_trip" do
    user = create(:user, email: "whatever@example.com", password: "password")
    post "/api/v1/sessions", :params => {
        "email": "whatever@example.com",
        "password": "password"
      }
    expect(session[:user_id]).to eq(user.id)
    post "/api/v1/road_trip", params:{
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
      "api_key": user.api_key
      }
      expect(response).to be_successful
      road = JSON.parse(response.body)
      expect(road["data"]["attributes"]).to have_key("origin")
      expect(road["data"]["attributes"]).to have_key("destination")
      expect(road["data"]["attributes"]).to have_key("travel_time")
      expect(road["data"]["attributes"]).to have_key("arrival_forecast")

  end
  it "can not get road_trip" do
      post "/api/v1/road_trip", params:{
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": 1
        }
        status = response.status
        expect(status).to eq(401)
  end
end
