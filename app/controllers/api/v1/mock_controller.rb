class Api::V1::MockController < ApplicationController

  def index

    render json: MockSerializer.new(Mock.new())
  end

end
