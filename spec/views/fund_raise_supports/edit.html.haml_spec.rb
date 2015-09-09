require 'rails_helper'

RSpec.describe "fund_raise_supports/edit", type: :view do
  before(:each) do
    @fund_raise_support = assign(:fund_raise_support, FundRaiseSupport.create!(
      :fund_raise_id => 1,
      :user_id => 1,
      :amount => 1,
      :message => "MyText",
      :status => "MyString",
      :pay_method => "MyString",
      :pay_bank => "MyString"
    ))
  end

  it "renders the edit fund_raise_support form" do
    render

    assert_select "form[action=?][method=?]", fund_raise_support_path(@fund_raise_support), "post" do

      assert_select "input#fund_raise_support_fund_raise_id[name=?]", "fund_raise_support[fund_raise_id]"

      assert_select "input#fund_raise_support_user_id[name=?]", "fund_raise_support[user_id]"

      assert_select "input#fund_raise_support_amount[name=?]", "fund_raise_support[amount]"

      assert_select "textarea#fund_raise_support_message[name=?]", "fund_raise_support[message]"

      assert_select "input#fund_raise_support_status[name=?]", "fund_raise_support[status]"

      assert_select "input#fund_raise_support_pay_method[name=?]", "fund_raise_support[pay_method]"

      assert_select "input#fund_raise_support_pay_bank[name=?]", "fund_raise_support[pay_bank]"
    end
  end
end
