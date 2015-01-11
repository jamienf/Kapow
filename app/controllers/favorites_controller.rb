require 'pry'
class FavoritesController < ApplicationController
  def index
    @comic = Comic.all
  end

  def create
    @favorite = Favorite.new(user: current_user, comic_id: params[:format])
    if @favorite.save
      redirect_to favorites_path, notice: 'Comic has been favorited'
    else
      redirect_to favorites_path, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    @favorite = Favorite.where(user: current_user, comic_id: params[:id])
    if @favorite.destroy(@favorite)
      redirect_to favorites_path, notice: "Your comic has been successfully deleted."
    else
      redirect_to favorites_path, alert: 'Something went wrong...*sad panda*'
    end
  end

  private

  # def favorite_params
  #   params.require(:favorite).permit(:user, :format)
  # end
end
