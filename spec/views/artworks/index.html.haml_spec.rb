require 'rails_helper'

RSpec.describe "artworks/index", type: :view do
  before(:each) do
    assign(:artworks, [
      Artwork.create!(
        :name => "MyText",
        :desc => "MyText",
        :artist_id => 1,
        :images => "MyText"
      ),
      Artwork.create!(
        :name => "MyText",
        :desc => "MyText",
        :artist_id => 1,
        :images => "MyText"
      )
    ])
  end

  it "renders a list of artworks" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
