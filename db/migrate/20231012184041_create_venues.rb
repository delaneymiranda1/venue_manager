class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :city
      t.integer :capacity
      t.boolean :open

      t.timestamps
    end
  end
end
