require 'rails_helper'

describe " Hiking Service" do
  it "can get service", :vcr do
    params = {:lat=>39.738453, :lon=>-104.984853}
    trails = HikingProjectService.new.trails(params)


  end
end
