class Dashboard::FundRaisingsController < Dashboard::BaseController
  before_action :set_fund_raising, only: [:show, :edit, :update, :destroy]

  # GET /fund_raisings
  # GET /fund_raisings.json
  def index
    @fund_raisings = FundRaising.page params[:page]
  end

  # GET /fund_raisings/1
  # GET /fund_raisings/1.json
  def show
  end

  # GET /fund_raisings/new
  def new
    @fund_raising = FundRaising.new
  end

  # GET /fund_raisings/1/edit
  def edit
    @fund_raising_term = @fund_raising.fund_raising_terms.build
  end

  # POST /fund_raisings
  # POST /fund_raisings.json
  def create
    @fund_raising = current_user.fund_raisings.new(fund_raising_params)

    respond_to do |format|
      if @fund_raising.save
        format.html { redirect_to dashboard_fund_raisings_path, notice: 'Fund raising was successfully created.' }
        format.json { render :show, status: :created, location: @fund_raising }
      else
        format.html { render :new }
        format.json { render json: @fund_raising.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_raisings/1
  # PATCH/PUT /fund_raisings/1.json
  def update
    @fund_raising_term = @fund_raising.fund_raising_terms.build
    respond_to do |format|
      if @fund_raising.update(fund_raising_params)
        format.html { redirect_to dashboard_fund_raisings_path, notice: 'Fund raising was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_raising }
      else
        format.html { render :edit }
        format.json { render json: @fund_raising.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_raisings/1
  # DELETE /fund_raisings/1.json
  def destroy
    @fund_raising.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_fund_raisings_path, notice: 'Fund raising was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_raising
      @fund_raising = FundRaising.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_raising_params
      params.require(:fund_raising).permit!
    end
end
