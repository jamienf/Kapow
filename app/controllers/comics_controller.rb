require 'open-uri'
class ComicsController < ApplicationController
  def index
    @comic = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      redirect_to admin_comics_path
      flash[:notice] = "You have successfully entered a new car listing"
    else
      render :new
    end
  end

  def update
    @comic = Comic.find(params[:id])
    if @comic.update(comic_params)
      redirect_to admin_comics_path
      flash[:notice] = "Your comic has been successfully updated."
    else
      render :edit
      flash[:alert] = "Please fill out the forms correctly."
    end
  end

  private

  def comic_params
    params.require(:comic).permit(:name, :scraper_url, :scraper_div, :scraper_src, :archive_url)
  end
end
