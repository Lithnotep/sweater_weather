require 'rails_helper'

describe " Trails API" do
  it "can get trails" do

    get "/api/v1/trails?location=denver,co"

    expect(response).to be_successful
    trail = JSON.parse(response.body)
    expect(trail).to have_key("data")
    expect(trail["data"]).to have_key("attributes")
    expect(trail["data"]["attributes"]).to have_key("location")
    expect(trail["data"]["attributes"]).to have_key("forecast")
    expect(trail["data"]["attributes"]).to have_key("trails")

  end
end
