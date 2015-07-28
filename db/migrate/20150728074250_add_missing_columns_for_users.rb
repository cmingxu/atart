class AddMissingColumnsForUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :lng, :decimal, scale: 5, precision: 9
    add_column :users, :lat, :decimal, scale: 5, precision: 9
    add_column :users, :area, :string
  end
end
