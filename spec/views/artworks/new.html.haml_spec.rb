require 'rails_helper'

RSpec.describe "artworks/new", type: :view do
  before(:each) do
    assign(:artwork, Artwork.new(
      :name => "MyText",
      :desc => "MyText",
      :artist_id => 1,
      :images => "MyText"
    ))
  end

  it "renders new artwork form" do
    render

    assert_select "form[action=?][method=?]", artworks_path, "post" do

      assert_select "textarea#artwork_name[name=?]", "artwork[name]"

      assert_select "textarea#artwork_desc[name=?]", "artwork[desc]"

      assert_select "input#artwork_artist_id[name=?]", "artwork[artist_id]"

      assert_select "textarea#artwork_images[name=?]", "artwork[images]"
    end
  end
end
