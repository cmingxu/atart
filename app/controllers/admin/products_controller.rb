class Admin::ProductsController < Admin::BaseController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_products_path, text: "艺术品管理")]
  end

  def index
    @products = Product.page params[:page]
  end

  def new
    @product = Product.new price: 1000
  end

  def edit
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_url, notice: '商品删除成功' }
      format.json { head :no_content }
    end
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_products_path, notice: '商品创建成功' }
        format.json { render :show, status: :created, location: @product }
      else
        flash.now[:notice] = @product.errors.full_messages.first
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to admin_products_path, notice: '商品修改成功' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def toggle_state
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit!
    end
end
