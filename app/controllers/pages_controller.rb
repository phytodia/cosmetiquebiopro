class PagesController < ApplicationController
  def home
    @newsletter = Newsletter.new
  end

  def sondage
  end

  def propos
  end

  def creatrice
  end

  def facebook
  end

  def contact
    #WelcomeMailer.welcome.deliver_now

  end

  def contact_send
    contact = params[:contact]
    ContactMailer.new_contact(contact).deliver_now
    redirect_to root_path, alert: "Votre message a bien été envoyé"
  end

  def cgu
  end

  def confidentialite
  end

  def faq
  end

end
