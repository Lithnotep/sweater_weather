class Api::V1::RoadTripController < ApplicationController

  def index
    user = User.find_by(api_key: road_trip_params[:api_key])
    if user != nil
     search = MapquestSearch.new({location: road_trip_params[:destination]}).formatted_data
     weather = OpenWeatherSearch.new(search).current_data
     road_trip_data = {
       origin: road_trip_params[:origin],
       destination: road_trip_params[:destination],
       travel_time: MapquestSearch.new({from: road_trip_params[:origin], to: road_trip_params[:destination]}).directions_data,
       arrival_forecast: weather
     }
      render json: RoadTripSerializer.new(RoadTrip.new(road_trip_data))
    else
      render :json => "public/401.html", :status => :unauthorized
    end
  end

  private
    def road_trip_params
      params.permit(:origin, :destination, :api_key)
    end

end
