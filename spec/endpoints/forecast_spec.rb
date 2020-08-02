require 'rails_helper'

RSpec.describe "Forecast API" do
  it "can get forecast" do

    visit '/api/v1/forecast'

    expect(response).to be_successful
  end
end
