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
    WelcomeMailer.welcome.deliver_now
  end

  def cgu
  end

  def confidentialite
  end

  def faq
  end

end
