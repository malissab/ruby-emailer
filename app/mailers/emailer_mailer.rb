class EmailerMailer < ApplicationMailer
    def welcome(user)
        @user = user
        mail(to: @user.email, subject: 'Test Email')
    end
end
