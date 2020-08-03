class Api::V1::TrailController < ApplicationController

  def index
    search = MapquestSearch.new(params).formatted_data
    trail_list = TrailSearch.new(search, params[:location]).trails
    forecast = OpenWeatherSearch.new(search).current_data
    render json: TrailSerializer.new(Trail.new(params[:location], forecast, trail_list))
  end

end
