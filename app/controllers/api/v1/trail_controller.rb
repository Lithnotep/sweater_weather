class Api::V1::TrailController < ApplicationController

  def index

    render json: TrailSerializer.new(Trail.new())
  end

end
