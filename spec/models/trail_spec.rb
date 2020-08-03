require 'rails_helper'

describe "trail model" do
  it "can instantiate" do
    trail_data = {
    location: "1",
    forecast: "2",
    trails: [1, 2, 3 ,4]
    }
    trail = Trail.new(trail_data)
    expect(trail.location).to eq("1")
    expect(trail.forecast).to eq("2")
    expect(trail.trails).to eq([1, 2, 3 ,4])
  end
end
