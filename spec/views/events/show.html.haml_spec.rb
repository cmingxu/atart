require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "Name",
      :gallery => "Gallery",
      :artist_name => "Artist Name",
      :address => "Address",
      :lng => "9.99",
      :lat => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Gallery/)
    expect(rendered).to match(/Artist Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
