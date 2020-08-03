require 'rails_helper'

describe "trail_search poro" do
  it "can trail search" do
    params = {:lat=>39.738453, :lon=>-104.984853}
    location = "denver,co"
    search = TrailSearch.new(params, location).trails
    expect(search.first).to have_key(:name)
    expect(search.first).to have_key(:summary)
    expect(search.first).to have_key(:difficulty)
    expect(search.first).to have_key(:location)
    expect(search.first).to have_key(:distance)
  end
end
