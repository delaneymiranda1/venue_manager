class RemoveVenueIdFromShows < ActiveRecord::Migration[7.0]
  def change
    remove_column :shows, :venue_id, :integer
  end
end
