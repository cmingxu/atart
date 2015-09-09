require 'rails_helper'

RSpec.describe "fund_raisings/new", type: :view do
  before(:each) do
    assign(:fund_raising, FundRaising.new(
      :name => "MyString",
      :en_name => "MyString",
      :image => "MyString",
      :moderator_id => 1,
      :user_id => 1,
      :target => 1,
      :current_raised => 1,
      :story => "MyText",
      :each_support => 1
    ))
  end

  it "renders new fund_raising form" do
    render

    assert_select "form[action=?][method=?]", fund_raisings_path, "post" do

      assert_select "input#fund_raising_name[name=?]", "fund_raising[name]"

      assert_select "input#fund_raising_en_name[name=?]", "fund_raising[en_name]"

      assert_select "input#fund_raising_image[name=?]", "fund_raising[image]"

      assert_select "input#fund_raising_moderator_id[name=?]", "fund_raising[moderator_id]"

      assert_select "input#fund_raising_user_id[name=?]", "fund_raising[user_id]"

      assert_select "input#fund_raising_target[name=?]", "fund_raising[target]"

      assert_select "input#fund_raising_current_raised[name=?]", "fund_raising[current_raised]"

      assert_select "textarea#fund_raising_story[name=?]", "fund_raising[story]"

      assert_select "input#fund_raising_each_support[name=?]", "fund_raising[each_support]"
    end
  end
end
