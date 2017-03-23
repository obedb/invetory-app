class UserMailer < ApplicationMailer


  def signup_confirmation(user) 
    @user = user

    mail to: @user.email, subject: 'Signed Up'
  end

  def add_inventory(user)
    @user = user

    mail to: @user.email, subject: 'Added Inventory'
  end

  def edited_inventory(user)
    @user = user

    mail to: @user.email, subject: 'Edited Inventory'  
  end

  def deleted_inventory(user)
    @user = user
    mail to: @user.email, subject: 'Deleted Inventory'
    
  end
end
