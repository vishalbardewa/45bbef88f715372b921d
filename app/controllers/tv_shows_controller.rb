class TvShowsController < ApplicationController

  def index
    @tv_shows = TvShow.all
  end

  def search
    @tv_shows = TvShow.where("title LIKE ?", "%" + params[:q] + "%" )
    
  end
end
