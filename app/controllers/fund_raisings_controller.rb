class FundRaisingsController < ApplicationController
  before_action :set_fund_raising, only: [:show, :edit, :update, :destroy]

  # GET /fund_raisings
  # GET /fund_raisings.json
  def index
    @fund_raisings = FundRaising.enabled
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
  end

  # POST /fund_raisings
  # POST /fund_raisings.json
  def create
    @fund_raising = FundRaising.new(fund_raising_params)

    respond_to do |format|
      if @fund_raising.save
        format.html { redirect_to @fund_raising, notice: 'Fund raising was successfully created.' }
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
    respond_to do |format|
      if @fund_raising.update(fund_raising_params)
        format.html { redirect_to @fund_raising, notice: 'Fund raising was successfully updated.' }
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
      format.html { redirect_to fund_raisings_url, notice: 'Fund raising was successfully destroyed.' }
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
