class AddColumnToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :en_name, :string
    add_column :artists, :en_desc, :text
    add_column :artists, :en_short_desc, :text
    add_column :artists, :avatar, :string
    add_column :artists, :weight, :integer
    add_column :artists, :name_initial, :string
  end
end
