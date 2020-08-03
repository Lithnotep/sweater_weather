require 'rails_helper'

describe "User API" do
  it "can create User", :vcr do

    post "/api/v1/users", :params => {

      "email": "whatever@example.com",
      "password": "password",
      "password_confirmation": "password"

    }




    expect(response).to be_successful
    weather = JSON.parse(response.body)
    expect(weather["data"]["attributes"]["email"]).to eq("whatever@example.com")

  end
end
