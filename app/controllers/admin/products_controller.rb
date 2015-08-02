class Admin::ProductsController < Admin::BaseController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_products_path, text: "艺术品管理")]
  end

  def index
    @products = Product.page params[:page]
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def create
  end

  def update
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
