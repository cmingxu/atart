require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :gallery => "MyString",
      :artist_name => "MyString",
      :address => "MyString",
      :lng => "9.99",
      :lat => "9.99"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_gallery[name=?]", "event[gallery]"

      assert_select "input#event_artist_name[name=?]", "event[artist_name]"

      assert_select "input#event_address[name=?]", "event[address]"

      assert_select "input#event_lng[name=?]", "event[lng]"

      assert_select "input#event_lat[name=?]", "event[lat]"
    end
  end
end
