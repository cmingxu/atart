class OrdersController < ApplicationController
  before_action :find_order, only: [:confirm_order_page, :confirm_order, :show]
  before_filter :authenticate_user!, except: [:notify]

  def new
    @product = Product.find params[:product_id]
    if !@product.buyable?
      redirect_to root_path, notice: "商品暂时不可卖"
    end

    @order = Order.new product_id: @product.id
  end

  def create
    @order = Order.from_product(Product.find(params[:product_id]))
    @order.user = current_user
    if @order.save
      @cart.empty
      redirect_to order_path(@order), notice: "下订单成功"
    else
      render cart_orders_path
    end
  end

  def confirm_order
    url = Alipay::Service.create_direct_pay_by_user_url(
      out_trade_no: @order.decorated_id,
      subject: @order.product.name,
      price: @order.price,
      quantity: 1,
      return_url: order_url(@order),
      notify_url: notify_order_url(@order)
    )
    render :json => { url: url }
  end

  def confirm_order_page
  end

  def show
    @order = Order.find params[:id]
  end

  def notify
    @order = Order.find params[:id]
    @order.pay!
    head :ok
  end


  def add_cart
    @cart.add_line_item(LineItem.from_text(params[:text]))
    store_cart
    head :ok
  end

  def delete_cart
    @cart.remove_line_item(LineItem.from_text(params[:text]))
    store_cart
    head :ok
  end

  def cart
  end

  private
  def find_order
    @order = Order.find params[:id]
  end
  def order_param
    params.require(:order).permit(:contact_phone, :contact_name, :ship_address, :pay_method)
  end
end
