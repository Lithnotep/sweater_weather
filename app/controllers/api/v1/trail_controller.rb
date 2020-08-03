class Api::V1::TrailController < ApplicationController

  def index
    search = MapquestSearch.new(params).formatted_data
    trails = TrailSearch.new(search, params[:location])
    forecast = OpenWeatherSearch.new(search).current_data
    render json: TrailSerializer.new(Trail.new())
  end

end
