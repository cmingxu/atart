class Admin::OrdersController < Admin::BaseController
  before_action :set_order, only: [:ship]
  before_filter do
   @breadcrumb = [OpenStruct.new(href: admin_orders_path, text: "订单管理")]
  end

  def index
    @orders = Order.page params[:page]
  end

  def ship
    @order.ship!
    redirect_to :back
  end

  private 
  def set_order
    @order = Order.find params[:id]
  end
end
