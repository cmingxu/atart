require 'rails_helper'

RSpec.describe "artworks/show", type: :view do
  before(:each) do
    @artwork = assign(:artwork, Artwork.create!(
      :name => "MyText",
      :desc => "MyText",
      :artist_id => 1,
      :images => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
