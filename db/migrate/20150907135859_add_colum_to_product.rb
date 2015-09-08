class AddColumToProduct < ActiveRecord::Migration
  def change
    add_column :products, :en_name, :string
    add_column :products, :width, :string
    add_column :products, :height, :string
    add_column :products, :thickness, :string
    add_column :products, :date_back, :string
    add_column :products, :style, :string
    add_column :products, :material, :string
    add_column :products, :position, :integer
  end
end
