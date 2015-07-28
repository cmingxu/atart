class AddMissingColumnToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :product_id, :integer
    add_column :orders, :pay_method, :string
    add_column :orders, :pay_amount, :decimal, scale: 2, precision: 8
    add_column :orders, :transaction_id, :string
    add_column :orders, :bank, :string
    add_column :orders, :paid_at, :datetime
  end
end
