require 'rails_helper'

describe "forecast model" do
  it "can instantiate" do
    data = {
      current_data: "1",
      hourly_data: "2",
      daily_data: "3"
    }
    forecast = Forecast.new(data)
    expect(forecast.current_weather).to eq("1")
    expect(forecast.hourly_weather).to eq("2")
    expect(forecast.daily_weather).to eq("3")
  end
end
