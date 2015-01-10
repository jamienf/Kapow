class Admin::ComicsController < ApplicationController
  # before_filter :check_if_admin
  def index
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(playlist_params)

    if @comic.save
      redirect_to admin_comics_path
      flash[:notice] = "You have successfully entered a new car listing"
    else
      render :new
    end
  end

  def edit
    @comic = current_user.comic.find(params[:id])
  end

  def update
    @comic = current_user.comic.find(params[:id])
  end

  def destroy
    @comic = Comic.find(params[:id])
    if @comic.destroy
      flash[:notice] = "Comic successfully deleted"
      redirect_to admin_comics_path
    else
      flash[:alert] = "Failed to delete comic."
      redirect_to admin_comics_path
    end
  end

  private

  def playlist_params
    params.require(:comic).permit(:name, :scraper_url, :scraper_div, :scraper_src, :archive_url)
  end

  # protected
  #
  # def check_if_admin
  #   if current_user.admin?
  #     else
  #         flash[:notice] = "You are not authorized to access this page."
  #       redirect_to root_path
  #   end
  # end
end
