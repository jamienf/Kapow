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
