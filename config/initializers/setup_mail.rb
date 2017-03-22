

ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :user_name => "obedbigirimana@gmail.com",
    :password => "bigirimana0",
    :authentication => "login",
    :enable_starttls_auto => true
}