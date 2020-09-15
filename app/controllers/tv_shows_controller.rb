class TvShowsController < ApplicationController

  def index
    @tv_shows = TvShow.all
  end

  def search
    if params[:category].to_i == 1
      @result = TvShow.where("title LIKE ?", "%" + params[:q] + "%" )
    else
      @result = Channel.where("name LIKE ?", "%" + params[:q] + "%" )
    end
    @result
  end

  def update_favourites
    tv_show = TvShow.find(params[:id])
    if tv_show
      tv_show.update(favourite: !tv_show.favourite)
    end
    redirect_to root_path
  end
end
