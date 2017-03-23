class UsersController < ApplicationController

  def new
  end 

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      country: params[:country],
      province_state: params[:province_state],
      village: params[:village],
      house_number: params[:house_number]
      )
    @user.save
    UserMailer.signup_confirmation(@user).deliver_now
    redirect_to '/inventories/new'

  end 
end

    