class UserMailer < ApplicationMailer


  def signup_confirmation(user) 
    @user = user

    mail to: @user.email, subject: 'Signed Up'
  end
end
