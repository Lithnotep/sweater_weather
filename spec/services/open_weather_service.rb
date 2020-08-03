require 'rails_helper'

describe " Hiking Service" do
  it "can get service" do
    params = {:city=>"denver,co"}
    weather = OpenWeatherService.new.current_weather(params)
    binding.pry
    expect(trails).to be(Hash)

  end
end
