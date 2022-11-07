class NewslettersController < ApplicationController
  def index
  end
  def new
    @newsletter = Newsletter.new
  end
  def create
    @newsletter = Newsletter.new(newsletter_params)
    @newsletter.save
    redirect_to root_path, alert: "Vous êtes inscrit à notre newsletter"
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end
