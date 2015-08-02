require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :gallery => "Gallery",
        :artist_name => "Artist Name",
        :address => "Address",
        :lng => "9.99",
        :lat => "9.99"
      ),
      Event.create!(
        :name => "Name",
        :gallery => "Gallery",
        :artist_name => "Artist Name",
        :address => "Address",
        :lng => "9.99",
        :lat => "9.99"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gallery".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
