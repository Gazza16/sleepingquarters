ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:                'smtp.sendgrid.net',
  port:                   '587',
  authentication:         :plain,
  user_name:              'app79893154@heroku.com',
  password:               'oratvnlt1024',
  domain:                 'https://rocky-atoll-94227.herokuapp.com',
  enable_starttls_auto:   true
}
