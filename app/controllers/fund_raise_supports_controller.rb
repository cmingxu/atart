class FundRaiseSupportsController < ApplicationController
  before_filter :authenticate_user!, except: [:notify]

  def show
  end

  def create
    @fund_raise_term = FundRaisingTerm.find_by_id(params[:fund_raise_term_id])
    @fund_raise = @fund_raise_term.fund_raising
    frs = @fund_raise.fund_raise_supports.new
    frs.user = current_user
    frs.amount = @fund_raise_term.amount
    frs.save

    url = Alipay::Service.create_direct_pay_by_user_url(
      out_trade_no: frs.decorated_id,
      subject: frs.fund_raise.name,
      price: frs.amount,
      quantity: 1,
      return_url: fund_raise_support_url(@fund_raise),
      notify_url: notify_fund_raise_support_url(@fund_raise)
    )

    redirect_to url
  end

  def notify
    @frs = FundRaiseSupport.find params[:id]
    @frs.pay!
    head :ok
  end
end
