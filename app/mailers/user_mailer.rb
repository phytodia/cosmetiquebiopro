class UserMailer < ApplicationMailer
  default from: 'cosmetiquebio.pro'

  def welcome_email
    @url  = 'http://example.com/login'
    mail(to: "th@phytodia.com", subject: 'Welcome to My Awesome Site')
  end

end
