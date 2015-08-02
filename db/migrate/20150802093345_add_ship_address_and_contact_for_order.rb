class AddShipAddressAndContactForOrder < ActiveRecord::Migration
  def change
    add_column :orders, :ship_address, :string
    add_column :orders, :contact_name, :string
    add_column :orders, :contact_phone, :string
    add_column :orders, :remark, :text
  end
end
