class SettingsController < ApplicationController
  def index
    @comic = Comic.all
  end

end
