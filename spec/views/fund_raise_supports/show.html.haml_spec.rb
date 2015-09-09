require 'rails_helper'

RSpec.describe "fund_raise_supports/show", type: :view do
  before(:each) do
    @fund_raise_support = assign(:fund_raise_support, FundRaiseSupport.create!(
      :fund_raise_id => 1,
      :user_id => 2,
      :amount => 3,
      :message => "MyText",
      :status => "Status",
      :pay_method => "Pay Method",
      :pay_bank => "Pay Bank"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Pay Method/)
    expect(rendered).to match(/Pay Bank/)
  end
end
