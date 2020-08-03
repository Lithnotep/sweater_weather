require 'rails_helper'

describe "Forecast API" do
  it "can get forecast", :vcr do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful
    weather = JSON.parse(response.body)
    expect(weather["data"]["attributes"].count).to eq(4)

  end
end
