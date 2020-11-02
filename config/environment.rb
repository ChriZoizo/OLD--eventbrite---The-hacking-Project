# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  port: 587,
  :domain => "monsite.fr",
  :address => "smtp.sendgrid.net",
  authentication: :plain,
  enable_starttls_auto: true,
  :user_name => ["SENDGRID_LOGIN"],
  :password => ["SENDGRID_PWD"],
}
