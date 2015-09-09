class CreateFundRaiseSupports < ActiveRecord::Migration
  def change
    create_table :fund_raise_supports do |t|
      t.integer :fund_raise_id
      t.integer :user_id
      t.integer :amount
      t.text :message
      t.string :status
      t.string :pay_method
      t.string :pay_bank

      t.timestamps null: false
    end
  end
end
