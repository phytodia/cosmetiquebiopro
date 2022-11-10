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
    #fail
    @user = "hunckler.thomas@hotmail.fr"
    UserMailer.welcome_email.deliver_now
    redirect_to root_path
  end

  def cgu
  end

  def confidentialite
  end

  def faq
  end

end
