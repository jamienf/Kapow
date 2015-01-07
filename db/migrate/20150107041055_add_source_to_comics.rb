class AddSourceToComics < ActiveRecord::Migration
  def change
    rename_column :comics, :scraper_name, :scraper_url
    add_column :comics, :scraper_div, :string, null: :false
    add_column :comics, :scraper_src, :string, null: :false
  end
end
