class WelcomeMailer < ApplicationMailer
  default from: "contact@cosmetiquebio.pro"
  layout "mailer"

  def welcome
    @greeting = "Hi"
    mail to: "th@phytodia.com"
  end
end
