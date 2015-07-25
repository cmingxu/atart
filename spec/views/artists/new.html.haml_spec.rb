require 'rails_helper'

RSpec.describe "artists/new", type: :view do
  before(:each) do
    assign(:artist, Artist.new(
      :name => "MyString",
      :short_desc => "MyText",
      :desc => "MyText",
      :artworks_count => 1
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "textarea#artist_short_desc[name=?]", "artist[short_desc]"

      assert_select "textarea#artist_desc[name=?]", "artist[desc]"

      assert_select "input#artist_artworks_count[name=?]", "artist[artworks_count]"
    end
  end
end
