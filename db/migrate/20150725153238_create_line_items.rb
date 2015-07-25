class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :status
      t.integer :user_id
      t.integer :artist_id
      t.integer :order_id
      t.decimal :price
      t.integer :quantity
      t.decimal :total_price

      t.timestamps null: false
    end
  end
end
