class UserMailer < ApplicationMailer


  def signup_confirmation(user) 
    @user = user

    mail to: @user.email, subject: 'Signed Up'
  end

  def item_finished(user, inventory)
    @user = user
    @inventory = inventory

    mail to: @user.email, subject: 'Item about to finish'
  end
end
