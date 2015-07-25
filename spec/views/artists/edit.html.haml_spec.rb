require 'rails_helper'

RSpec.describe "artists/edit", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "MyString",
      :short_desc => "MyText",
      :desc => "MyText",
      :artworks_count => 1
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "textarea#artist_short_desc[name=?]", "artist[short_desc]"

      assert_select "textarea#artist_desc[name=?]", "artist[desc]"

      assert_select "input#artist_artworks_count[name=?]", "artist[artworks_count]"
    end
  end
end
