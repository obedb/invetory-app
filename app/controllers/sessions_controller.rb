class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in!"
      redirect_to '/inventories'
    else
      flash[:warning] = "Invald email or passward"
      redirect_to '/inventories/new'
    end 
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out'
    redirect_to '/login'
  end
end


