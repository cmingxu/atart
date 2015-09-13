class Dashboard::FundRaisingTermsController < Dashboard::BaseController
  def create
    @fund_raise = FundRaising.find params[:fund_raising_id]
    @fund_raise_term = @fund_raise.fund_raising_terms.build fund_raise_term_param

    @fund_raise_term.save
    redirect_to :back
  end


  def fund_raise_term_param
    params.require(:fund_raising_term).permit!
  end
end
