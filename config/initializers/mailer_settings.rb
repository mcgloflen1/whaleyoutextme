ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      ENV["mandrill_username"],
    :password =>       ENV["mandrill_password"],
    :domain =>         'http://localhost:3000/',
    :authentication => :plain
}