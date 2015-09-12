class AddColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :enabled, :boolean, default: false
  end
end
