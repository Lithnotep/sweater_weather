require 'rails_helper'

describe "open_weather_search poro" do
  it "can current_weather search" do
    params = {from: "denver,co", to: "fort collins,co"}

    search = MapquestSearch.new(params).directions_data

    expect(search).to_not be(nil)

  end
end
