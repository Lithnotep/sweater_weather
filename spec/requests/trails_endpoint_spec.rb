require 'rails_helper'

describe " Trails API" do
  it "can get trails", :vcr do

    get "/api/v1/trails?location=denver,co"

    expect(response).to be_successful
    mock = JSON.parse(response.body)

  end
end

# Your API will return:
# current forecast for the start location
# name of the trail
# summary of each trail
# difficulty of each trail
# location of each trail
# estimated travel time for each trail
