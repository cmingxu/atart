class Admin::OrdersController < Admin::BaseController
  before_filter do
   @breadcrumb = [OpenStruct.new(href: admin_orders_path, text: "订单管理")]
  end

  def index
    @orders = Order.page params[:page]
  end
end
