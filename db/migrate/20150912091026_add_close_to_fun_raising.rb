class AddCloseToFunRaising < ActiveRecord::Migration
  def change
    add_column :fund_raisings, :close, :boolean, default: false
  end
end
