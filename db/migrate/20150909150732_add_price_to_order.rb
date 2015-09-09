class AddPriceToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :price, :decimal, scale: 2, precision: 8
  end
end
