require 'rails_helper'

RSpec.describe "bookmarks/edit", type: :view do
  before(:each) do
    @bookmark = assign(:bookmark, Bookmark.create!(
      :bookmarkable_id => 1,
      :bookmarkable_type => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmark_path(@bookmark), "post" do

      assert_select "input#bookmark_bookmarkable_id[name=?]", "bookmark[bookmarkable_id]"

      assert_select "input#bookmark_bookmarkable_type[name=?]", "bookmark[bookmarkable_type]"

      assert_select "input#bookmark_user_id[name=?]", "bookmark[user_id]"
    end
  end
end
