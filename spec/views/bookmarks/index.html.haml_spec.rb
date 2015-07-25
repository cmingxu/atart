require 'rails_helper'

RSpec.describe "bookmarks/index", type: :view do
  before(:each) do
    assign(:bookmarks, [
      Bookmark.create!(
        :bookmarkable_id => 1,
        :bookmarkable_type => "Bookmarkable Type",
        :user_id => 2
      ),
      Bookmark.create!(
        :bookmarkable_id => 1,
        :bookmarkable_type => "Bookmarkable Type",
        :user_id => 2
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Bookmarkable Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
