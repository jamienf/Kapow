class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name, null:false
      t.string :ScraperName, null: false
      t.timestamps
    end
  end
end
