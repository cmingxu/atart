require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :gallery => "MyString",
      :artist_name => "MyString",
      :address => "MyString",
      :lng => "9.99",
      :lat => "9.99"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_gallery[name=?]", "event[gallery]"

      assert_select "input#event_artist_name[name=?]", "event[artist_name]"

      assert_select "input#event_address[name=?]", "event[address]"

      assert_select "input#event_lng[name=?]", "event[lng]"

      assert_select "input#event_lat[name=?]", "event[lat]"
    end
  end
end
