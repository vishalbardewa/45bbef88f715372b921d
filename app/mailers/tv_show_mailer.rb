class TvShowMailer < ApplicationMailer
  include Sidekiq::Worker

  def perform
    
  end
  
  def show_starts_soon_email
    @show = params[:tv_show]

    mail(to: "admin@email.com", subject: "Your show is about to start in 30 minutes!!!")
  end
end
