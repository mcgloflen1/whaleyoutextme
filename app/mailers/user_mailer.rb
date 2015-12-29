class UserMailer < ApplicationMailer
    default from: "Whale You Text Me <no-reply@whaleyoutextme.com>"

    def say_hello(user)
        @username  = user.username
        @email = user.email
        @password = user.password
        mail(to: @email, subject: "Hi, you made a new account..")
    end
end