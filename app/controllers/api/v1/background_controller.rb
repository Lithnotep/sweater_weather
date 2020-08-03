class Api::V1::BackgroundController < ApplicationController

  def index
    search = UnsplashSearch.new(params).formatted_data
    render json: BackgroundSerializer.new(Background.new(search))
  end

end
