require 'rails_helper'

describe "open_weather_search poro" do
  it "can current_weather search", :vcr do
    params = {:lat=>39.738453, :lon=>-104.984853}

    search = OpenWeatherSearch.new(params).current_data

    expect(search).to have_key(:summary)
    expect(search).to have_key(:temperature)
  end
end
