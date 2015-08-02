class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :gallery
      t.string :artist_name
      t.string :address
      t.decimal :lng
      t.decimal :lat
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
