class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :send_from_id
      t.integer :send_to_id
      t.text :content

      t.timestamps null: false
    end
  end
end
