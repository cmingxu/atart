class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.text :name
      t.text :desc
      t.integer :artist_id
      t.text :images

      t.timestamps null: false
    end
  end
end
