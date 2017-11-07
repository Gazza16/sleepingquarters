class ApplicationMailer < ActionMailer::Base
  #overall settings for email
  default from: 'admin@sleeping.com'
  layout 'mailer'
end
