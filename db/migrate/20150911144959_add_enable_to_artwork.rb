class AddEnableToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :enabled, :boolean
  end
end
