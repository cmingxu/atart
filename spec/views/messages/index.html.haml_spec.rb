require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :send_from_id => 1,
        :send_to_id => 2,
        :content => "MyText"
      ),
      Message.create!(
        :send_from_id => 1,
        :send_to_id => 2,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
