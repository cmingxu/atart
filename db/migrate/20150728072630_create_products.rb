class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal:price, :scale => 2, :precision => 8
      t.integer :artist_id
      t.decimal:preorder_price, :scale => 2, :precision => 8
      t.text :name
      t.text :short_desc
      t.text :desc
      t.text :images

      t.timestamps null: false
    end
  end
end
