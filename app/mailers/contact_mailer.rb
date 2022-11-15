class ContactMailer < ApplicationMailer
  default from: "contact@cosmetiquebio.pro"
  layout "mailer"

  def new_contact
    @greeting = "Nouveau contact"
    mail to: "th@phytodia.com"
  end
end
