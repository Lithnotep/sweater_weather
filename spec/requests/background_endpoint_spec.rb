require 'rails_helper'

describe "Background API" do
  it "can get forecast" do

    get '/api/v1/backgrounds?location=denver,co'

    expect(response).to be_successful
    background = JSON.parse(response.body)
    expect(background["data"]["attributes"].count).to eq(2)

  end
end
