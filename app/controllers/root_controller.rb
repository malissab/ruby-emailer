class RootController < ApplicationController
  def create
    user = User.new(email: "testemail@test.com")
    user.save
    EmailerMailer.welcome(user).deliver_now
  end
end
