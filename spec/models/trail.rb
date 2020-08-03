require 'rails_helper'

describe "trail model" do
  it "can instantiate" do
    data = {
      current_data: "1",
      hourly_data: "2",
      daily_data: "3"
    }
    forecast = Trail.new(data)
    expect(forecast.current_weather).to eq("1")
    expect(forecast.hourly_weather).to eq("2")
    expect(forecast.daily_weather).to eq("3")
  end
end
