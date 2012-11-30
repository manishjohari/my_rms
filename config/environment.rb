# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Hrms::Application.initialize!
#Date::DATE_FORMATS[:default] = "%Y-%m-%d %H:%M"
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = 
{ 
 :address              => "smtp.gmail.com",
 :port                 => 587,
 :domain               => "gmail.com",
 :user_name            => "idifytest@gmail.com" ,
 :password             => "idifysolutions",
 :authentication       => "plain",
 :enable_starttls_auto => true
 }

