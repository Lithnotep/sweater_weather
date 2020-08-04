require 'rails_helper'

describe "User API" do
  it "can create User", :vcr do

    post "/api/v1/users", :params => {

      "email": "whatever@example.com",
      "password": "password",
      "password_confirmation": "password"

    }

    expect(response).to be_successful
    user = JSON.parse(response.body)
    expect(user["data"]["attributes"]["email"]).to eq("whatever@example.com")
  end
    it "can create User", :vcr do

      post "/api/v1/users", :params => {

        "email": "whatever@example.com",
        "password": "password",
        "password_confirmation": "password"

      }

      expect(response).to be_successful
      user = JSON.parse(response.body)
      expect(user["data"]["attributes"]["email"]).to eq("whatever@example.com")

      post "/api/v1/users", :params => {

        "email": "whatever@example.com",
        "password": "password",
        "password_confirmation": "password"
      }
      user = JSON.parse(response.body)
      expect(user["email"].first).to eq("has already been taken")

    end

end
