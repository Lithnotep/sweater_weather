require 'rails_helper'

describe "RoadTrip model" do
  it "can instantiate" do
    data = {
      origin: "1",
      destination: "2",
      travel_time: "3",
      arrival_forecast: "4"
    }
    road = RoadTrip.new(data)
    expect(road.origibn).to eq("1")
    expect(road.destination).to eq("2")
    expect(road.travel_time).to eq("3")
    expect(road.arrival_forecast).to eq("4")
  end
end
