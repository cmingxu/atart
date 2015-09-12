class ChangeColumnForFundRaising < ActiveRecord::Migration
  def change
    rename_column :fund_raisings, :story, :story_content
    add_column :fund_raisings, :story_title, :string
  end
end
