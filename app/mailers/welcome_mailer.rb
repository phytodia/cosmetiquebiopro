class WelcomeMailer < ApplicationMailer
  default from: "from@example.com"
  layout "mailer"

  def welcome
    @greeting = "Hi"
    mail to: "th@phytodia.com"
  end
end
