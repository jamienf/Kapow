class ComicsController < ApplicationController
  def index
    @comic_list = []
    @comic_list << ComicScraper.buttersafe_info
    @comic_list << ComicScraper.dino_info
    @comic_list << ComicScraper.explosm_info
    @comic_list << ComicScraper.smbc_info
    @comic_list << ComicScraper.xkcd_info
  end
end

    # @comics = Comic.all
    # if user_signed_in?
      # @comics.each do |comic|
      #   @comic_list << comic.scraper_name
      # end
    # end
