class ContactMailer < ApplicationMailer
  default from: "contact@cosmetiquebio.pro"
  layout "mailer"

  def new_contact(contact)
    @greeting = "Nouveau contact"
    contact = contact
    @lastname = contact[:lastname]
    @firstname = contact[:firstname]
    @email = contact[:email]
    @message = contact[:message]
    mail to: "th@phytodia.com"
  end
end
