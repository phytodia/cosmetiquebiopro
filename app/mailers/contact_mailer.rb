class ContactMailer < ApplicationMailer
  default from: "contact@cosmetiquebio.pro"
  layout "mailer"

  def new_contact(contact)
    @greeting = "Nouveau contact"
    @contact = contact
    @lastname = contact[:lastname]
    @firstname = contact[:firstname]
    @email = contact[:email]
    @message = contact[:message]
    @societe = contact[:societe]
    @fonction = contact[:fonction]
    @tel = contact[:tel]
    @address = contact[:address]
    @complement = contact[:complement]
    @cp = contact[:cp]
    @ville = contact[:ville]
    @pays = contact[:pays]
    @nb_cabine = contact[:nb_cabine]
    @surface = contact[:surface]
    @marques_distri = contact[:marques_distri]
    @budget = contact[:budget]
    @rgpd = contact[:rgpd]
    if !contact[:fichier].nil?
      fichier = contact[:fichier]
      attachment_tmp_path = File.absolute_path(fichier.tempfile)
      attachments['Pièce jointe'] = File.read(attachment_tmp_path)
    end
    mail to: "nif@phytodia.com"
  end

  def new_consultante(contact)
    @greeting = "Consultante"
    @contact = contact
    @email = contact[:email]
    @rgpd = contact[:rgpd]
    fichier = contact[:fichier]
    attachment_tmp_path = File.absolute_path(fichier.tempfile)
    attachments['Pièce jointe'] = File.read(attachment_tmp_path)
    mail to: "nif@phytodia.com"
  end

  def new_creatrice(contact)
    @greeting = "Créatrice"
    @contact = contact
    @rgpd = contact[:rgpd]
    @email = contact[:email]
    @date_atelier = contact[:date]
    mail to: "nif@phytodia.com"
  end

end
