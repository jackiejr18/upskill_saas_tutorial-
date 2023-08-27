# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'https://30e12ffe5572427a8e7bbf8e986956af.vfs.cloud9.us-east-2.amazonaws.com/contact-us',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp
