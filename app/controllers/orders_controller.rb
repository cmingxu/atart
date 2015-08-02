class OrdersController < ApplicationController
  before_action :find_order, only: [:confirm_order_page, :confirm_order, :show]
  before_filter :authenticate_user!

  def new
    @product = Product.find params[:product_id]
    if !@product.buyable?
      redirect_to root_path, notice: "商品暂时不可卖"
    end

    @order = Order.new product_id: @product.id
  end

  def create
    @order = current_user.orders.build order_param
    @product = Product.find params[:product_id]
    @order.product = @product
    if @order.save
      redirect_to order_path(@order), notice: "下订单成功"
    else
      render :new
    end
  end

  def confirm_order
  end

  def confirm_order_page
  end

  def show
  end

  private
  def find_order
    @order = Order.find params[:id]
  end
  def order_param
    params.require(:order).permit(:contact_phone, :contact_name, :ship_address, :pay_method)
  end
end
