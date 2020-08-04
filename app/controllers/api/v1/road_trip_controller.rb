class Api::V1::RoadTripController < ApplicationController

  def index
    user = User.find_by(api_key: road_trip_params[:api_key])
    if user
     search = MapquestSearch.new({location: road_trip_params[:destination]}).formatted_data
     weather = OpenWeatherSearch.new(search).current_data
     road_trip_data = {
       origin: weather,
       destination: MapquestSearch.new({from: params[:origin], to: params[:destination]}).directions_data,
       travel_time: data[:daily_data],
       arrival_forecast: weather
     }
      render json: RoadTripSerializer.new(RoadTrip.new(weather))
    else
      render :json => "public/401.html", :status => :unauthorized
    end
  end

  private
    def road_trip_params
      params.permit(:origin, :destination, :api_key)
    end

end
