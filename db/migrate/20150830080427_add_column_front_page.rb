class AddColumnFrontPage < ActiveRecord::Migration
  def change
    add_column :events, :show_in_front_page, :boolean
  end
end
