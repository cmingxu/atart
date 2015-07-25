class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :short_desc
      t.text :desc
      t.integer :artworks_count

      t.timestamps null: false
    end
  end
end
