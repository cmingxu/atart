require 'rails_helper'

RSpec.describe "messages/edit", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :send_from_id => 1,
      :send_to_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit message form" do
    render

    assert_select "form[action=?][method=?]", message_path(@message), "post" do

      assert_select "input#message_send_from_id[name=?]", "message[send_from_id]"

      assert_select "input#message_send_to_id[name=?]", "message[send_to_id]"

      assert_select "textarea#message_content[name=?]", "message[content]"
    end
  end
end
