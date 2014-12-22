class ComicsController < ApplicationController
  def index
    @comic_list = []
    @comic_list << ComicScraper.xkcd_image_url
    @comic_list << ComicScraper.explosm_image_url
    @comic_list << ComicScraper.penny_arcade_url
  end
end
