class WelcomeMailer < ApplicationMailer
  default from: "contact@cosmetiquebio.pro"
  layout "mailer"

  def welcome
    mail(to: "th@phytodia.com", subject: 'Nouveau contact')
  end
end
