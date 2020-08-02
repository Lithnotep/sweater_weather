class Api::V1::BackgroundController < ApplicationController

  def index
    search = UnsplashSearch.new(params).formatted_data
  end

end
