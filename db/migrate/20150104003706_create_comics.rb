class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string
    end
  end
end
