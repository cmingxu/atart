class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :en_name
      t.string :image
      t.boolean :enabled, default: false
      t.integer :moderator_id
      t.integer :artworks_count, default: 0

      t.timestamps null: false
    end
  end
end
