require 'rails_helper'

describe " Hiking Service" do
  it "can get service" do
    params = {:lat=>39.738453, :lon=>-104.984853}
    trails = HikingProjectService.new.trails(params)
    expect(trails).to have_key(:trails)

  end
end
