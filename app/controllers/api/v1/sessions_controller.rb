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


def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    flash[:success] = "Logged in as #{user.name}!"
    if current_merchant?
      redirect_to '/merchant'
    elsif current_admin?
      redirect_to '/admin'
    else
      redirect_to '/profile'
    end
  else
    flash[:error] = "Sorry, your credentials are bad."
    render :new
  end
end
