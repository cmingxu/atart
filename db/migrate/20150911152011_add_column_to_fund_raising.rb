class AddColumnToFundRaising < ActiveRecord::Migration
  def change
    add_column :fund_raisings, :enabled, :boolean
  end
end
