class FavoritesController < ApplicationController
  def index
    @comic = Comic.all
  end

  def create
    @favorite = Favorite.new(user: current_user, comic_id: params[:format])
    if @favorite.save
      redirect_to favorites_path, notice: 'Comic has been favorited!'
    else
      redirect_to favorites_path, alert: 'You have already favorited this comic!'
    end
  end

  def destroy
    @favorite = Favorite.where(user: current_user, comic_id: params[:id])
    if Favorite.where(user: current_user, comic_id: params[:id]).empty?
      redirect_to favorites_path, alert: 'You aren\'t subscribed to this comic!'
    else
      @favorite.destroy(@favorite)
      redirect_to favorites_path, notice: "Your comic has been successfully deleted."
    end
  end

  private

  # def favorite_params
  #   params.require(:favorite).permit(:user, :format)
  # end
end
