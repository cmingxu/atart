class CreateFundRaisings < ActiveRecord::Migration
  def change
    create_table :fund_raisings do |t|
      t.string :name
      t.string :en_name
      t.string :image
      t.integer :moderator_id
      t.integer :user_id
      t.integer :target
      t.integer :current_raised
      t.datetime :begin_at
      t.datetime :end_at
      t.text :story
      t.integer :each_support

      t.timestamps null: false
    end
  end
end
