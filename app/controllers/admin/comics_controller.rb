class Admin::ComicsController < ApplicationController
  # before_filter :check_if_admin
  def index
    @comics = Comic.all
  end

  def new
  end

  def create
  end

  protected

  def check_if_admin
    if current_user.admin?
      else
          flash[:notice] = "You are not authorized to access this page."
        redirect_to root_path
    end
  end
end
