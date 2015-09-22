class FundRaiseSupportsController < Admin::BaseController
  before_action :set_fund_raise_support, only: [:show, :edit, :update, :destroy]

  # GET /fund_raise_supports
  # GET /fund_raise_supports.json
  def index
    @fund_raise_supports = FundRaiseSupport.all
  end

  # GET /fund_raise_supports/1
  # GET /fund_raise_supports/1.json
  def show
  end

  # GET /fund_raise_supports/new
  def new
    @fund_raise_support = FundRaiseSupport.new
  end

  # GET /fund_raise_supports/1/edit
  def edit
  end

  # POST /fund_raise_supports
  # POST /fund_raise_supports.json
  def create
    @fund_raise_support = FundRaiseSupport.new(fund_raise_support_params)

    respond_to do |format|
      if @fund_raise_support.save
        format.html { redirect_to @fund_raise_support, notice: 'Fund raise support was successfully created.' }
        format.json { render :show, status: :created, location: @fund_raise_support }
      else
        format.html { render :new }
        format.json { render json: @fund_raise_support.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_raise_supports/1
  # PATCH/PUT /fund_raise_supports/1.json
  def update
    respond_to do |format|
      if @fund_raise_support.update(fund_raise_support_params)
        format.html { redirect_to @fund_raise_support, notice: 'Fund raise support was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_raise_support }
      else
        format.html { render :edit }
        format.json { render json: @fund_raise_support.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_raise_supports/1
  # DELETE /fund_raise_supports/1.json
  def destroy
    @fund_raise_support.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Fund raise support was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_raise_support
      @fund_raise_support = FundRaiseSupport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_raise_support_params
      params.require(:fund_raise_support).permit(:fund_raise_id, :user_id, :amount, :message, :status, :pay_method, :pay_bank)
    end
end
