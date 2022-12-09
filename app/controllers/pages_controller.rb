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

  def mentions
  end

  def consultantes
  end

  def contact
    #WelcomeMailer.welcome.deliver_now

  end

  def contact_send
    contact = params[:contact]
    if params[:contact][:type] == "devenir_consultante"
      ContactMailer.new_consultante(contact).deliver_now
      redirect_to root_path, alert: "Votre inscription a bien été prise en compte"
    elsif params[:contact][:type] == "creatrice"
      ContactMailer.new_creatrice(contact).deliver_now
      redirect_to root_path, alert: "Votre inscription a bien été prise en compte"
    else
      ContactMailer.new_contact(contact).deliver_now
      redirect_to root_path, alert: "Votre message a bien été envoyé"
    end

  end

  def cgu
  end

  def confidentialite
  end

  def faq
  end

end
