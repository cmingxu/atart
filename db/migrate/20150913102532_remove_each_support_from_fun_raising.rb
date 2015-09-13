class RemoveEachSupportFromFunRaising < ActiveRecord::Migration
  def change
    remove_column :fund_raisings, :each_support
  end
end
