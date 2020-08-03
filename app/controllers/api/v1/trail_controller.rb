class Api::V1::TrailController < ApplicationController

  def index
    search = MapquestSearch.new(params).formatted_data
    trail_data = {
    trails: TrailSearch.new(search, params[:location]).trails,
    forecast: OpenWeatherSearch.new(search).current_data,
    location: params[:location]
    }
    render json: TrailSerializer.new(Trail.new(trail_data))
  end

end
