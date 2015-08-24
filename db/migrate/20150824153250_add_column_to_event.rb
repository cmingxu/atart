class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :enabled, :boolean, default: false
  end
end
