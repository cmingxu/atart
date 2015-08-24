class AddColumnToEventMarker < ActiveRecord::Migration
  def change
    add_column :event_markers, :event_id, :integer
  end
end
