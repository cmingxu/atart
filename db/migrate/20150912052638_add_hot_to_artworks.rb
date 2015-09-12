class AddHotToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :hot, :boolean
  end
end
