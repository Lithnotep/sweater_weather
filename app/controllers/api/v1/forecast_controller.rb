class Api::V1::ForecastController < ApplicationController

  def index
    search = MapquestSearch.new(params).formatted_data
    weather = OpenWeatherSearch.new(search).formatted_data
    render json: ForecastSerializer.new(Forecast.new(weather))
  end

end
