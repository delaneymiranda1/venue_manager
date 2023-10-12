class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.integer :venue_id
      t.string :artist_name
      t.integer :price
      t.boolean :sold_out

      t.timestamps
    end
  end
end
