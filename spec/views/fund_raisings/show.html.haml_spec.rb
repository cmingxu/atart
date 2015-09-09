require 'rails_helper'

RSpec.describe "fund_raisings/show", type: :view do
  before(:each) do
    @fund_raising = assign(:fund_raising, FundRaising.create!(
      :name => "Name",
      :en_name => "En Name",
      :image => "Image",
      :moderator_id => 1,
      :user_id => 2,
      :target => 3,
      :current_raised => 4,
      :story => "MyText",
      :each_support => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/En Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/5/)
  end
end
