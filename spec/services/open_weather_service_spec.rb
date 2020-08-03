require 'rails_helper'

describe " weather service" do
  it "can get service", :vcr do
    params = {:lat=>39.738453, :lon=>-104.984853}
    weather = OpenWeatherService.new.weather(params)
    expect(weather).to have_key(:lat)
    expect(weather).to have_key(:lon)
    expect(weather).to have_key(:current)


  end
end
