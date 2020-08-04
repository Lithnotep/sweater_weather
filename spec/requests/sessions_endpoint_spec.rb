require 'rails_helper'

describe "session API" do
  it "can create session", :vcr do
    user = create(:user, email: "whatever@example.com", password: "password")
        post "/api/v1/sessions", :params => {
        "email": "whatever@example.com",
        "password": "password"
      }
    expect(response).to be_successful
    user = JSON.parse(response.body)
    expect(user["data"]["attributes"]["email"]).to eq("whatever@example.com")
    expect(user["data"]["attributes"]).to have_key("api_key")

  end
end
