require 'rails_helper'

describe "background model" do
  it "can instantiate", :vcr do
    data = {
      image_url: "1"
    }
    background = Background.new(data)
    expect(background.image_url).to eq("1")

  end
end
