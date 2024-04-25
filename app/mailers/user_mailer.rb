class UserMailer < ApplicationMailer

  default :from => "system@garden-monitor.com"

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to the garden monitor!")
  end
end
