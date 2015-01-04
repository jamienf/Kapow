class UpdateColumnOnComics < ActiveRecord::Migration
  def change
    rename_column :comics, :ScraperName, :scraper_name
  end
end
