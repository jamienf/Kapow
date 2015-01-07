class AddArchiveUrlToComics < ActiveRecord::Migration
  def change
    add_column :comics, :archive_url, :string, null: :false
  end
end
