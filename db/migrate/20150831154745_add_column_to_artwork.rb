class AddColumnToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :address, :string
    add_column :artworks, :location, :string
  end
end
