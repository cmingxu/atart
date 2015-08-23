class CreateChannelsArtworks < ActiveRecord::Migration
  def change
    create_table :channels_artworks do |t|
      t.integer :channel_id
      t.integer :artwork_id

      t.timestamps null: false
    end
  end
end
