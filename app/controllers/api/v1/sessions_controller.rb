class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: UserSerializer.new(user)
    else
      render :json => "public/401.html", :status => :unauthorized
    end
  end

end
