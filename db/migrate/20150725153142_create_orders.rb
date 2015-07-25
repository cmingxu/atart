class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :user_id
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
