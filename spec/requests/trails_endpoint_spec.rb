require 'rails_helper'

describe " Trails API" do
  it "can get trails", :vcr do

    get "/api/v1/trails?location=denver,co"

    expect(response).to be_successful
    mock = JSON.parse(response.body)

  end
end
