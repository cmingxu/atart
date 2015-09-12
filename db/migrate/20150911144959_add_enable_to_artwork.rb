class AddEnableToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :enabled, :boolean, default: false
  end
end
