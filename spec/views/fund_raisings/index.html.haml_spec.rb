require 'rails_helper'

RSpec.describe "fund_raisings/index", type: :view do
  before(:each) do
    assign(:fund_raisings, [
      FundRaising.create!(
        :name => "Name",
        :en_name => "En Name",
        :image => "Image",
        :moderator_id => 1,
        :user_id => 2,
        :target => 3,
        :current_raised => 4,
        :story => "MyText",
        :each_support => 5
      ),
      FundRaising.create!(
        :name => "Name",
        :en_name => "En Name",
        :image => "Image",
        :moderator_id => 1,
        :user_id => 2,
        :target => 3,
        :current_raised => 4,
        :story => "MyText",
        :each_support => 5
      )
    ])
  end

  it "renders a list of fund_raisings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "En Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
