require 'rails_helper'

describe " weather service" do
  it "can get service" do
    params = {:lat=>39.738453, :lon=>-104.984853}
    weather = OpenWeatherService.new.current_weather(params)
    expect(weather).to have_key(:coord)
    expect(weather).to have_key(:weather)
    expect(weather).to have_key(:main)


  end
end
