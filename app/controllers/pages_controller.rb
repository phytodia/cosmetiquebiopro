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

    elsif params[:contact][:type] == "creatrice"
      ContactMailer.new_creatrice(contact).deliver_now
    else
      ContactMailer.new_contact(contact).deliver_now
    end
    redirect_to root_path, alert: "Votre message a bien été envoyé"
  end

  def cgu
  end

  def confidentialite
  end

  def faq
  end

end
