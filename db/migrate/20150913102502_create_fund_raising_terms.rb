class CreateFundRaisingTerms < ActiveRecord::Migration
  def change
    create_table :fund_raising_terms do |t|
      t.integer :fund_raising_id
      t.integer :amount
      t.text :desc

      t.timestamps null: false
    end
  end
end
