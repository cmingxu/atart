require 'rails_helper'

RSpec.describe "fund_raise_supports/index", type: :view do
  before(:each) do
    assign(:fund_raise_supports, [
      FundRaiseSupport.create!(
        :fund_raise_id => 1,
        :user_id => 2,
        :amount => 3,
        :message => "MyText",
        :status => "Status",
        :pay_method => "Pay Method",
        :pay_bank => "Pay Bank"
      ),
      FundRaiseSupport.create!(
        :fund_raise_id => 1,
        :user_id => 2,
        :amount => 3,
        :message => "MyText",
        :status => "Status",
        :pay_method => "Pay Method",
        :pay_bank => "Pay Bank"
      )
    ])
  end

  it "renders a list of fund_raise_supports" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Pay Method".to_s, :count => 2
    assert_select "tr>td", :text => "Pay Bank".to_s, :count => 2
  end
end
