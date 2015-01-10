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
    # @favorite = Favorite.find_or_initialize_by(user: current_user, comic: @comic)
    # @favorite.save
  end

  def destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user, :format)
  end
end
