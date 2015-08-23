class CreateEventMarkers < ActiveRecord::Migration
  def change
    create_table :event_markers do |t|
      t.integer :x
      t.integer :y
      t.string :word
      t.string :link

      t.timestamps null: false
    end
  end
end
