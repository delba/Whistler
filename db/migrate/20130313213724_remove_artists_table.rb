class RemoveArtistsTable < ActiveRecord::Migration
  def change
  	drop_table :artists
  end
end
